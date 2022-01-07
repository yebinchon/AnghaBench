
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int WARN_STRICT_OVERFLOW_MISC ;
 int fold_overflow_warning (char*,int ) ;
 int tree_expr_nonnegative_warnv_p (int ,int*) ;

int
tree_expr_nonnegative_p (tree t)
{
  int ret;
  bool strict_overflow_p;

  strict_overflow_p = 0;
  ret = tree_expr_nonnegative_warnv_p (t, &strict_overflow_p);
  if (strict_overflow_p)
    fold_overflow_warning (("assuming signed overflow does not occur when "
       "determining that expression is always "
       "non-negative"),
      WARN_STRICT_OVERFLOW_MISC);
  return ret;
}
