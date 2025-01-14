
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int f_mode; } ;
typedef int loff_t ;


 int FMODE_READ ;
 int PAGE_CACHE_SIZE ;
 int PagePrivate (struct page*) ;
 int PageUptodate (struct page*) ;
 unsigned int nfs_page_length (struct page*) ;

__attribute__((used)) static int nfs_want_read_modify_write(struct file *file, struct page *page,
   loff_t pos, unsigned len)
{
 unsigned int pglen = nfs_page_length(page);
 unsigned int offset = pos & (PAGE_CACHE_SIZE - 1);
 unsigned int end = offset + len;

 if ((file->f_mode & FMODE_READ) &&
     !PageUptodate(page) &&
     !PagePrivate(page) &&
     pglen &&
     (end < pglen || offset))
  return 1;
 return 0;
}
