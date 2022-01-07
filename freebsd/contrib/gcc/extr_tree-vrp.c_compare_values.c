
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int compare_values_warnv (int ,int ,int*) ;
 int is_gimple_min_invariant (int ) ;

__attribute__((used)) static int
compare_values (tree val1, tree val2)
{
  bool sop;
  int ret;

  sop = 0;
  ret = compare_values_warnv (val1, val2, &sop);
  if (sop
      && (!is_gimple_min_invariant (val1) || !is_gimple_min_invariant (val2)))
    ret = -2;
  return ret;
}
