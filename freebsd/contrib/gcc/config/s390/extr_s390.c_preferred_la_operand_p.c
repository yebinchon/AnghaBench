
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_address {scalar_t__ indx; scalar_t__ base; scalar_t__ pointer; } ;
typedef scalar_t__ rtx ;


 int Pmode ;
 int REGNO (scalar_t__) ;
 int REGNO_OK_FOR_BASE_P (int ) ;
 int REGNO_OK_FOR_INDEX_P (int ) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ REG_POINTER (scalar_t__) ;
 int TARGET_64BIT ;
 scalar_t__ const0_rtx ;
 scalar_t__ gen_rtx_PLUS (int ,scalar_t__,scalar_t__) ;
 int s390_decompose_address (scalar_t__,struct s390_address*) ;

bool
preferred_la_operand_p (rtx op1, rtx op2)
{
  struct s390_address addr;

  if (op2 != const0_rtx)
    op1 = gen_rtx_PLUS (Pmode, op1, op2);

  if (!s390_decompose_address (op1, &addr))
    return 0;
  if (addr.base && !REGNO_OK_FOR_BASE_P (REGNO (addr.base)))
    return 0;
  if (addr.indx && !REGNO_OK_FOR_INDEX_P (REGNO (addr.indx)))
    return 0;

  if (!TARGET_64BIT && !addr.pointer)
    return 0;

  if (addr.pointer)
    return 1;

  if ((addr.base && REG_P (addr.base) && REG_POINTER (addr.base))
      || (addr.indx && REG_P (addr.indx) && REG_POINTER (addr.indx)))
    return 1;

  return 0;
}
