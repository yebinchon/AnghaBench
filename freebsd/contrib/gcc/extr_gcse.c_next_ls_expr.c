
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {struct ls_expr* next; } ;



__attribute__((used)) static inline struct ls_expr *
next_ls_expr (struct ls_expr * ptr)
{
  return ptr->next;
}
