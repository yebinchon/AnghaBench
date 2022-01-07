
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct TYPE_6__ {int len; int sqnum; } ;
struct ubifs_data_node {int compr_type; int data; TYPE_2__ ch; int size; } ;
struct page {int index; int flags; TYPE_1__* mapping; } ;
struct inode {int i_ino; } ;
struct bu_info {int cnt; TYPE_3__* zbranch; struct ubifs_data_node* buf; } ;
typedef int pgoff_t ;
typedef int loff_t ;
struct TYPE_8__ {scalar_t__ creat_sqnum; } ;
struct TYPE_7__ {int offs; int key; } ;
struct TYPE_5__ {struct inode* host; } ;


 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int EINVAL ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int SetPageChecked (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int UBIFS_BLOCKS_PER_PAGE ;
 unsigned int UBIFS_BLOCKS_PER_PAGE_SHIFT ;
 int UBIFS_BLOCK_SHIFT ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_DATA_NODE_SZ ;
 int dbg_gen (char*,...) ;
 int flush_dcache_page (struct page*) ;
 int i_size_read (struct inode*) ;
 unsigned int key_block (struct ubifs_info*,int *) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int memset (void*,int ,int) ;
 int ubifs_assert (int) ;
 int ubifs_decompress (int *,int,void*,int*,int ) ;
 int ubifs_err (char*,unsigned int,int ) ;
 TYPE_4__* ubifs_inode (struct inode*) ;

__attribute__((used)) static int populate_page(struct ubifs_info *c, struct page *page,
    struct bu_info *bu, int *n)
{
 int i = 0, nn = *n, offs = bu->zbranch[0].offs, hole = 0, read = 0;
 struct inode *inode = page->mapping->host;
 loff_t i_size = i_size_read(inode);
 unsigned int page_block;
 void *addr, *zaddr;
 pgoff_t end_index;

 dbg_gen("ino %lu, pg %lu, i_size %lld, flags %#lx",
  inode->i_ino, page->index, i_size, page->flags);

 addr = zaddr = kmap(page);

 end_index = (i_size - 1) >> PAGE_CACHE_SHIFT;
 if (!i_size || page->index > end_index) {
  hole = 1;
  memset(addr, 0, PAGE_CACHE_SIZE);
  goto out_hole;
 }

 page_block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
 while (1) {
  int err, len, out_len, dlen;

  if (nn >= bu->cnt) {
   hole = 1;
   memset(addr, 0, UBIFS_BLOCK_SIZE);
  } else if (key_block(c, &bu->zbranch[nn].key) == page_block) {
   struct ubifs_data_node *dn;

   dn = bu->buf + (bu->zbranch[nn].offs - offs);

   ubifs_assert(le64_to_cpu(dn->ch.sqnum) >
         ubifs_inode(inode)->creat_sqnum);

   len = le32_to_cpu(dn->size);
   if (len <= 0 || len > UBIFS_BLOCK_SIZE)
    goto out_err;

   dlen = le32_to_cpu(dn->ch.len) - UBIFS_DATA_NODE_SZ;
   out_len = UBIFS_BLOCK_SIZE;
   err = ubifs_decompress(&dn->data, dlen, addr, &out_len,
            le16_to_cpu(dn->compr_type));
   if (err || len != out_len)
    goto out_err;

   if (len < UBIFS_BLOCK_SIZE)
    memset(addr + len, 0, UBIFS_BLOCK_SIZE - len);

   nn += 1;
   read = (i << UBIFS_BLOCK_SHIFT) + len;
  } else if (key_block(c, &bu->zbranch[nn].key) < page_block) {
   nn += 1;
   continue;
  } else {
   hole = 1;
   memset(addr, 0, UBIFS_BLOCK_SIZE);
  }
  if (++i >= UBIFS_BLOCKS_PER_PAGE)
   break;
  addr += UBIFS_BLOCK_SIZE;
  page_block += 1;
 }

 if (end_index == page->index) {
  int len = i_size & (PAGE_CACHE_SIZE - 1);

  if (len && len < read)
   memset(zaddr + len, 0, read - len);
 }

out_hole:
 if (hole) {
  SetPageChecked(page);
  dbg_gen("hole");
 }

 SetPageUptodate(page);
 ClearPageError(page);
 flush_dcache_page(page);
 kunmap(page);
 *n = nn;
 return 0;

out_err:
 ClearPageUptodate(page);
 SetPageError(page);
 flush_dcache_page(page);
 kunmap(page);
 ubifs_err("bad data node (block %u, inode %lu)",
    page_block, inode->i_ino);
 return -EINVAL;
}
