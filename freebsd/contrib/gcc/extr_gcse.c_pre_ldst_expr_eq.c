
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {int pattern; } ;


 int expr_equiv_p (int ,int ) ;

__attribute__((used)) static int
pre_ldst_expr_eq (const void *p1, const void *p2)
{
  const struct ls_expr *ptr1 = p1, *ptr2 = p2;
  return expr_equiv_p (ptr1->pattern, ptr2->pattern);
}
