
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef int loff_t ;


 int EXOFS_DBGMSG (char*) ;
 unsigned int PAGE_CACHE_SIZE ;
 int PageUptodate (struct page*) ;
 int _readpage (struct page*,int) ;
 int simple_write_begin (struct file*,struct address_space*,int ,unsigned int,unsigned int,struct page**,void**) ;
 int unlock_page (struct page*) ;

int exofs_write_begin(struct file *file, struct address_space *mapping,
  loff_t pos, unsigned len, unsigned flags,
  struct page **pagep, void **fsdata)
{
 int ret = 0;
 struct page *page;

 page = *pagep;
 if (page == ((void*)0)) {
  ret = simple_write_begin(file, mapping, pos, len, flags, pagep,
      fsdata);
  if (ret) {
   EXOFS_DBGMSG("simple_write_begin faild\n");
   return ret;
  }

  page = *pagep;
 }


 if (!PageUptodate(page) && (len != PAGE_CACHE_SIZE)) {
  ret = _readpage(page, 1);
  if (ret) {

   unlock_page(page);
   EXOFS_DBGMSG("__readpage_filler faild\n");
  }
 }

 return ret;
}
