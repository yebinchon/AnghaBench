
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageError (struct page*) ;
 int EFAULT ;
 int EXOFS_DBGMSG (char*) ;
 scalar_t__ PageError (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int clear_highpage (struct page*) ;

__attribute__((used)) static int update_read_page(struct page *page, int ret)
{
 if (ret == 0) {

  SetPageUptodate(page);
  if (PageError(page))
   ClearPageError(page);
 } else if (ret == -EFAULT) {





  clear_highpage(page);

  SetPageUptodate(page);
  if (PageError(page))
   ClearPageError(page);
  ret = 0;
  EXOFS_DBGMSG("recovered read error\n");
 } else
  SetPageError(page);

 return ret;
}
