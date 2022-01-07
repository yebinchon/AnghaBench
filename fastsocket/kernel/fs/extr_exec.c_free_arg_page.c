
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {int ** page; } ;


 int __free_page (int *) ;

__attribute__((used)) static void free_arg_page(struct linux_binprm *bprm, int i)
{
 if (bprm->page[i]) {
  __free_page(bprm->page[i]);
  bprm->page[i] = ((void*)0);
 }
}
