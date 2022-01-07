
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ECF_NORETURN ;
 int call_expr_flags (scalar_t__) ;
 scalar_t__ get_call_expr_in (scalar_t__) ;

__attribute__((used)) static inline bool
noreturn_call_p (tree t)
{
  tree call = get_call_expr_in (t);
  return call != 0 && (call_expr_flags (call) & ECF_NORETURN) != 0;
}
