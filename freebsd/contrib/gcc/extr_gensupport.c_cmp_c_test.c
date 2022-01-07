
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_test {int expr; } ;


 int strcmp (int ,int ) ;

int
cmp_c_test (const void *x, const void *y)
{
  const struct c_test *a = (const struct c_test *) x;
  const struct c_test *b = (const struct c_test *) y;

  return !strcmp (a->expr, b->expr);
}
