
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_test {char const* expr; int value; } ;


 int condition_table ;
 scalar_t__ htab_find (int ,struct c_test*) ;

int
maybe_eval_c_test (const char *expr)
{
  const struct c_test *test;
  struct c_test dummy;

  if (expr[0] == 0)
    return 1;

  dummy.expr = expr;
  test = (const struct c_test *)htab_find (condition_table, &dummy);
  if (!test)
    return -1;
  return test->value;
}
