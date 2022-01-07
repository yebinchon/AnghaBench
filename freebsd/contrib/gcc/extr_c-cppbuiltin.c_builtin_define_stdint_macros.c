
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int builtin_define_type_max (char*,scalar_t__,int) ;
 int gcc_unreachable () ;
 scalar_t__ integer_type_node ;
 scalar_t__ intmax_type_node ;
 scalar_t__ long_integer_type_node ;
 scalar_t__ long_long_integer_type_node ;

__attribute__((used)) static void
builtin_define_stdint_macros (void)
{
  int intmax_long;
  if (intmax_type_node == long_long_integer_type_node)
    intmax_long = 2;
  else if (intmax_type_node == long_integer_type_node)
    intmax_long = 1;
  else if (intmax_type_node == integer_type_node)
    intmax_long = 0;
  else
    gcc_unreachable ();
  builtin_define_type_max ("__INTMAX_MAX__", intmax_type_node, intmax_long);
}
