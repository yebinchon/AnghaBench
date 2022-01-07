
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;


 int _enter (char*,int ) ;

__attribute__((used)) static int afs_launder_page(struct page *page)
{
 _enter("{%lu}", page->index);

 return 0;
}
