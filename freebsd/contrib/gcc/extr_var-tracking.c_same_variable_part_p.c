
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 int DECL_P (scalar_t__) ;
 scalar_t__ INT_MEM_OFFSET (int ) ;
 scalar_t__ MEM_EXPR (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ REG_EXPR (int ) ;
 scalar_t__ REG_OFFSET (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ var_debug_decl (scalar_t__) ;

__attribute__((used)) static bool
same_variable_part_p (rtx loc, tree expr, HOST_WIDE_INT offset)
{
  tree expr2;
  HOST_WIDE_INT offset2;

  if (! DECL_P (expr))
    return 0;

  if (REG_P (loc))
    {
      expr2 = REG_EXPR (loc);
      offset2 = REG_OFFSET (loc);
    }
  else if (MEM_P (loc))
    {
      expr2 = MEM_EXPR (loc);
      offset2 = INT_MEM_OFFSET (loc);
    }
  else
    return 0;

  if (! expr2 || ! DECL_P (expr2))
    return 0;

  expr = var_debug_decl (expr);
  expr2 = var_debug_decl (expr2);

  return (expr == expr2 && offset == offset2);
}
