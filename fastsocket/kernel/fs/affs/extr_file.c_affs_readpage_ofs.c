
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_size; scalar_t__ i_ino; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int PAGE_CACHE_MASK ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int SetPageUptodate (struct page*) ;
 int affs_do_readpage_ofs (struct file*,struct page*,int ,int) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ page_address (struct page*) ;
 int pr_debug (char*,int,int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
affs_readpage_ofs(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 u32 to;
 int err;

 pr_debug("AFFS: read_page(%u, %ld)\n", (u32)inode->i_ino, page->index);
 to = PAGE_CACHE_SIZE;
 if (((page->index + 1) << PAGE_CACHE_SHIFT) > inode->i_size) {
  to = inode->i_size & ~PAGE_CACHE_MASK;
  memset(page_address(page) + to, 0, PAGE_CACHE_SIZE - to);
 }

 err = affs_do_readpage_ofs(file, page, 0, to);
 if (!err)
  SetPageUptodate(page);
 unlock_page(page);
 return err;
}
