
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {int index; struct ls_expr* next; } ;


 struct ls_expr* pre_ldst_mems ;

__attribute__((used)) static int
enumerate_ldsts (void)
{
  struct ls_expr * ptr;
  int n = 0;

  for (ptr = pre_ldst_mems; ptr != ((void*)0); ptr = ptr->next)
    ptr->index = n++;

  return n;
}
