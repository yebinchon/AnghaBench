
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 scalar_t__ GET_CODE (int *) ;
 scalar_t__ PARALLEL ;
 int * PATTERN (int *) ;
 scalar_t__ REG_P (int *) ;
 int * SET_DEST (int *) ;
 int * SET_SRC (int *) ;
 scalar_t__ SIGN_EXTEND ;
 int * SUBREG_REG (int *) ;
 int * XEXP (int *,int ) ;
 scalar_t__ ZERO_EXTEND ;
 int * single_set (int *) ;

__attribute__((used)) static rtx
see_get_extension_reg (rtx extension, bool return_dest_reg)
{
  rtx set, rhs, lhs;
  rtx reg1 = ((void*)0);
  rtx reg2 = ((void*)0);


  if (GET_CODE (PATTERN (extension)) == PARALLEL)
    return ((void*)0);

  set = single_set (extension);
  if (!set)
    return ((void*)0);
  lhs = SET_DEST (set);
  rhs = SET_SRC (set);

  if (REG_P (lhs))
    reg1 = lhs;
  else if (REG_P (SUBREG_REG (lhs)))
    reg1 = SUBREG_REG (lhs);
  else
    return ((void*)0);

  if (GET_CODE (rhs) != SIGN_EXTEND && GET_CODE (rhs) != ZERO_EXTEND)
    return ((void*)0);

  rhs = XEXP (rhs, 0);
  if (REG_P (rhs))
    reg2 = rhs;
  else if (REG_P (SUBREG_REG (rhs)))
    reg2 = SUBREG_REG (rhs);
  else
    return ((void*)0);

  if (return_dest_reg)
    return reg1;
  return reg2;
}
