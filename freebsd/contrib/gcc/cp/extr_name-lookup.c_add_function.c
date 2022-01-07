
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct arg_lookup {scalar_t__ functions; scalar_t__ name; } ;


 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ build_overload (scalar_t__,scalar_t__) ;
 int error (char*,scalar_t__) ;
 scalar_t__ is_overloaded_fn (scalar_t__) ;

__attribute__((used)) static bool
add_function (struct arg_lookup *k, tree fn)
{
  if (!k->functions)
    k->functions = fn;
  else if (fn == k->functions)
    ;
  else if (is_overloaded_fn (k->functions) && is_overloaded_fn (fn))
    k->functions = build_overload (fn, k->functions);
  else
    {
      tree f1 = OVL_CURRENT (k->functions);
      tree f2 = fn;
      if (is_overloaded_fn (f1))
 {
   fn = f1; f1 = f2; f2 = fn;
 }
      error ("%q+D is not a function,", f1);
      error ("  conflict with %q+D", f2);
      error ("  in call to %qD", k->name);
      return 1;
    }

  return 0;
}
