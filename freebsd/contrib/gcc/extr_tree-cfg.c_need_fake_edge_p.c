
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ASM_EXPR ;
 scalar_t__ ASM_INPUT_P (scalar_t__) ;
 scalar_t__ ASM_VOLATILE_P (scalar_t__) ;
 int ECF_NORETURN ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int call_expr_flags (scalar_t__) ;
 scalar_t__ get_call_expr_in (scalar_t__) ;

__attribute__((used)) static bool
need_fake_edge_p (tree t)
{
  tree call;
  call = get_call_expr_in (t);
  if (call
      && !(call_expr_flags (call) & ECF_NORETURN))
    return 1;

  if (TREE_CODE (t) == ASM_EXPR
       && (ASM_VOLATILE_P (t) || ASM_INPUT_P (t)))
    return 1;

  return 0;
}
