
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct inode {scalar_t__ i_ino; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {scalar_t__ mmu_private; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int ENOMEM ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int affs_do_readpage_ofs (struct file*,struct page*,int ,int ) ;
 int affs_extent_file_ofs (struct inode*,scalar_t__) ;
 struct page* grab_cache_page_write_begin (struct address_space*,scalar_t__,unsigned int) ;
 int page_cache_release (struct page*) ;
 int pr_debug (char*,int ,unsigned long long,unsigned int) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int affs_write_begin_ofs(struct file *file, struct address_space *mapping,
    loff_t pos, unsigned len, unsigned flags,
    struct page **pagep, void **fsdata)
{
 struct inode *inode = mapping->host;
 struct page *page;
 pgoff_t index;
 int err = 0;

 pr_debug("AFFS: write_begin(%u, %llu, %llu)\n", (u32)inode->i_ino, (unsigned long long)pos, (unsigned long long)pos + len);
 if (pos > AFFS_I(inode)->mmu_private) {



  err = affs_extent_file_ofs(inode, pos);
  if (err)
   return err;
 }

 index = pos >> PAGE_CACHE_SHIFT;
 page = grab_cache_page_write_begin(mapping, index, flags);
 if (!page)
  return -ENOMEM;
 *pagep = page;

 if (PageUptodate(page))
  return 0;


 err = affs_do_readpage_ofs(file, page, 0, PAGE_CACHE_SIZE);
 if (err) {
  unlock_page(page);
  page_cache_release(page);
 }
 return err;
}
