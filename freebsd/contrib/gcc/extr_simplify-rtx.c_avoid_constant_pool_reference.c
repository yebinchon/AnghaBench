
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ (* delegitimize_address ) (scalar_t__) ;} ;
typedef int REAL_VALUE_TYPE ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONST ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (scalar_t__) ;
 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_DOUBLE_FROM_REAL_VALUE (int ,int) ;
 scalar_t__ CONST_INT ;

 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ LO_SUM ;

 scalar_t__ PLUS ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,scalar_t__) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ get_pool_constant (scalar_t__) ;
 int get_pool_mode (scalar_t__) ;
 scalar_t__ simplify_subreg (int,scalar_t__,int,scalar_t__) ;
 scalar_t__ stub1 (scalar_t__) ;
 TYPE_1__ targetm ;

rtx
avoid_constant_pool_reference (rtx x)
{
  rtx c, tmp, addr;
  enum machine_mode cmode;
  HOST_WIDE_INT offset = 0;

  switch (GET_CODE (x))
    {
    case 128:
      break;

    case 129:

      tmp = XEXP (x, 0);
      c = avoid_constant_pool_reference (tmp);
      if (c != tmp && GET_CODE (c) == CONST_DOUBLE)
 {
   REAL_VALUE_TYPE d;

   REAL_VALUE_FROM_CONST_DOUBLE (d, c);
   return CONST_DOUBLE_FROM_REAL_VALUE (d, GET_MODE (x));
 }
      return x;

    default:
      return x;
    }

  addr = XEXP (x, 0);


  addr = targetm.delegitimize_address (addr);


  if (GET_CODE (addr) == CONST
      && GET_CODE (XEXP (addr, 0)) == PLUS
      && GET_CODE (XEXP (XEXP (addr, 0), 1)) == CONST_INT)
    {
      offset = INTVAL (XEXP (XEXP (addr, 0), 1));
      addr = XEXP (XEXP (addr, 0), 0);
    }

  if (GET_CODE (addr) == LO_SUM)
    addr = XEXP (addr, 1);



  if (GET_CODE (addr) == SYMBOL_REF
      && CONSTANT_POOL_ADDRESS_P (addr))
    {
      c = get_pool_constant (addr);
      cmode = get_pool_mode (addr);




      if (offset != 0 || cmode != GET_MODE (x))
        {
          rtx tem = simplify_subreg (GET_MODE (x), c, cmode, offset);
          if (tem && CONSTANT_P (tem))
            return tem;
        }
      else
        return c;
    }

  return x;
}
