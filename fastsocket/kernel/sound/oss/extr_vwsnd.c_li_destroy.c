
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * page2; int * page1; int * page0; } ;
typedef TYPE_1__ lithium_t ;


 int iounmap (int *) ;

__attribute__((used)) static void li_destroy(lithium_t *lith)
{
 if (lith->page0) {
  iounmap(lith->page0);
  lith->page0 = ((void*)0);
 }
 if (lith->page1) {
  iounmap(lith->page1);
  lith->page1 = ((void*)0);
 }
 if (lith->page2) {
  iounmap(lith->page2);
  lith->page2 = ((void*)0);
 }
}
