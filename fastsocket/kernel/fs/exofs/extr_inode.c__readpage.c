
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_collect {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int host; } ;


 int EXOFS_ERR (char*,int) ;
 int _pcol_init (struct page_collect*,int,int ) ;
 int read_exec (struct page_collect*,int) ;
 int readpage_strip (struct page_collect*,struct page*) ;

__attribute__((used)) static int _readpage(struct page *page, bool is_sync)
{
 struct page_collect pcol;
 int ret;

 _pcol_init(&pcol, 1, page->mapping->host);





 ret = readpage_strip(&pcol, page);
 if (ret) {
  EXOFS_ERR("_readpage => %d\n", ret);
  return ret;
 }

 return read_exec(&pcol, is_sync);
}
