
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_data_node {int size; } ;
struct page {unsigned int index; int flags; TYPE_1__* mapping; } ;
struct inode {int i_ino; } ;
typedef int loff_t ;
struct TYPE_2__ {struct inode* host; } ;


 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 int PAGE_CACHE_SIZE ;
 int PageChecked (struct page*) ;
 int PagePrivate (struct page*) ;
 int SetPageChecked (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int UBIFS_BLOCKS_PER_PAGE ;
 unsigned int UBIFS_BLOCKS_PER_PAGE_SHIFT ;
 int UBIFS_BLOCK_SHIFT ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_MAX_DATA_NODE_SZ ;
 int dbg_gen (char*,...) ;
 int flush_dcache_page (struct page*) ;
 int i_size_read (struct inode*) ;
 int kfree (struct ubifs_data_node*) ;
 struct ubifs_data_node* kmalloc (int ,int ) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int le32_to_cpu (int ) ;
 int memset (void*,int ,int) ;
 int read_block (struct inode*,void*,unsigned int,struct ubifs_data_node*) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,unsigned int,int ,int) ;

__attribute__((used)) static int do_readpage(struct page *page)
{
 void *addr;
 int err = 0, i;
 unsigned int block, beyond;
 struct ubifs_data_node *dn;
 struct inode *inode = page->mapping->host;
 loff_t i_size = i_size_read(inode);

 dbg_gen("ino %lu, pg %lu, i_size %lld, flags %#lx",
  inode->i_ino, page->index, i_size, page->flags);
 ubifs_assert(!PageChecked(page));
 ubifs_assert(!PagePrivate(page));

 addr = kmap(page);

 block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
 beyond = (i_size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
 if (block >= beyond) {

  SetPageChecked(page);
  memset(addr, 0, PAGE_CACHE_SIZE);
  goto out;
 }

 dn = kmalloc(UBIFS_MAX_DATA_NODE_SZ, GFP_NOFS);
 if (!dn) {
  err = -ENOMEM;
  goto error;
 }

 i = 0;
 while (1) {
  int ret;

  if (block >= beyond) {

   err = -ENOENT;
   memset(addr, 0, UBIFS_BLOCK_SIZE);
  } else {
   ret = read_block(inode, addr, block, dn);
   if (ret) {
    err = ret;
    if (err != -ENOENT)
     break;
   } else if (block + 1 == beyond) {
    int dlen = le32_to_cpu(dn->size);
    int ilen = i_size & (UBIFS_BLOCK_SIZE - 1);

    if (ilen && ilen < dlen)
     memset(addr + ilen, 0, dlen - ilen);
   }
  }
  if (++i >= UBIFS_BLOCKS_PER_PAGE)
   break;
  block += 1;
  addr += UBIFS_BLOCK_SIZE;
 }
 if (err) {
  if (err == -ENOENT) {

   SetPageChecked(page);
   dbg_gen("hole");
   goto out_free;
  }
  ubifs_err("cannot read page %lu of inode %lu, error %d",
     page->index, inode->i_ino, err);
  goto error;
 }

out_free:
 kfree(dn);
out:
 SetPageUptodate(page);
 ClearPageError(page);
 flush_dcache_page(page);
 kunmap(page);
 return 0;

error:
 kfree(dn);
 ClearPageUptodate(page);
 SetPageError(page);
 flush_dcache_page(page);
 kunmap(page);
 return err;
}
