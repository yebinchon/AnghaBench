
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page_collect {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct TYPE_2__ {int host; } ;


 int EXOFS_ERR (char*,int) ;
 int _pcol_init (struct page_collect*,int,int ) ;
 int write_exec (struct page_collect*) ;
 int writepage_strip (struct page*,int *,struct page_collect*) ;

__attribute__((used)) static int exofs_writepage(struct page *page, struct writeback_control *wbc)
{
 struct page_collect pcol;
 int ret;

 _pcol_init(&pcol, 1, page->mapping->host);

 ret = writepage_strip(page, ((void*)0), &pcol);
 if (ret) {
  EXOFS_ERR("exofs_writepage => %d\n", ret);
  return ret;
 }

 return write_exec(&pcol);
}
