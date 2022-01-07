
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ PIC_OFFSET_TABLE_REGNUM ;
 scalar_t__ PLUS ;
 scalar_t__ REG ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ UNSPEC ;
 scalar_t__ UNSPEC_GOT ;
 scalar_t__ UNSPEC_GOTENT ;
 int XEXP (int ,int) ;
 scalar_t__ XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;

__attribute__((used)) static rtx
s390_delegitimize_address (rtx orig_x)
{
  rtx x = orig_x, y;

  if (GET_CODE (x) != MEM)
    return orig_x;

  x = XEXP (x, 0);
  if (GET_CODE (x) == PLUS
      && GET_CODE (XEXP (x, 1)) == CONST
      && GET_CODE (XEXP (x, 0)) == REG
      && REGNO (XEXP (x, 0)) == PIC_OFFSET_TABLE_REGNUM)
    {
      y = XEXP (XEXP (x, 1), 0);
      if (GET_CODE (y) == UNSPEC
   && XINT (y, 1) == UNSPEC_GOT)
 return XVECEXP (y, 0, 0);
      return orig_x;
    }

  if (GET_CODE (x) == CONST)
    {
      y = XEXP (x, 0);
      if (GET_CODE (y) == UNSPEC
   && XINT (y, 1) == UNSPEC_GOTENT)
 return XVECEXP (y, 0, 0);
      return orig_x;
    }

  return orig_x;
}
