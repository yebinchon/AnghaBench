
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct super_block {int dummy; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_ino; struct super_block* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {unsigned int s_data_blksize; } ;
struct TYPE_3__ {struct inode* host; } ;


 unsigned int AFFS_DATA (struct buffer_head*) ;
 TYPE_2__* AFFS_SB (struct super_block*) ;
 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PAGE_CACHE_SHIFT ;
 unsigned int PAGE_CACHE_SIZE ;
 int PTR_ERR (struct buffer_head*) ;
 struct buffer_head* affs_bread_ino (struct inode*,unsigned int,int ) ;
 int affs_brelse (struct buffer_head*) ;
 int flush_dcache_page (struct page*) ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (char*,unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 char* page_address (struct page*) ;
 int pr_debug (char*,unsigned int,int,unsigned int,unsigned int) ;

__attribute__((used)) static int
affs_do_readpage_ofs(struct file *file, struct page *page, unsigned from, unsigned to)
{
 struct inode *inode = page->mapping->host;
 struct super_block *sb = inode->i_sb;
 struct buffer_head *bh;
 char *data;
 u32 bidx, boff, bsize;
 u32 tmp;

 pr_debug("AFFS: read_page(%u, %ld, %d, %d)\n", (u32)inode->i_ino, page->index, from, to);
 BUG_ON(from > to || to > PAGE_CACHE_SIZE);
 kmap(page);
 data = page_address(page);
 bsize = AFFS_SB(sb)->s_data_blksize;
 tmp = (page->index << PAGE_CACHE_SHIFT) + from;
 bidx = tmp / bsize;
 boff = tmp % bsize;

 while (from < to) {
  bh = affs_bread_ino(inode, bidx, 0);
  if (IS_ERR(bh))
   return PTR_ERR(bh);
  tmp = min(bsize - boff, to - from);
  BUG_ON(from + tmp > to || tmp > bsize);
  memcpy(data + from, AFFS_DATA(bh) + boff, tmp);
  affs_brelse(bh);
  bidx++;
  from += tmp;
  boff = 0;
 }
 flush_dcache_page(page);
 kunmap(page);
 return 0;
}
