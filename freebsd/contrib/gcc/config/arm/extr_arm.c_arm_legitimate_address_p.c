
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int RTX_CODE ;


 int CONST ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (int ) ;
 scalar_t__ CONST_INT ;
 int DFmode ;
 int DImode ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 int LABEL_REF ;
 scalar_t__ MINUS ;
 scalar_t__ MODE_FLOAT ;
 scalar_t__ PLUS ;
 int POST_DEC ;
 int POST_INC ;
 int POST_MODIFY ;
 int PRE_DEC ;
 int PRE_INC ;
 int PRE_MODIFY ;
 scalar_t__ REG ;
 int SYMBOL_REF ;
 scalar_t__ TARGET_LDRD ;
 scalar_t__ TARGET_SOFT_FLOAT ;
 scalar_t__ TARGET_VFP ;
 int TImode ;
 int XEXP (int ,int) ;
 int arm_address_register_rtx_p (int ,int) ;
 scalar_t__ arm_legitimate_index_p (int,int ,int ,int) ;
 scalar_t__ flag_pic ;
 int get_pool_constant (int ) ;
 int pcrel_constant_p (int ) ;
 scalar_t__ reload_completed ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 scalar_t__ symbol_mentioned_p (int ) ;

int
arm_legitimate_address_p (enum machine_mode mode, rtx x, RTX_CODE outer,
     int strict_p)
{
  bool use_ldrd;
  enum rtx_code code = GET_CODE (x);

  if (arm_address_register_rtx_p (x, strict_p))
    return 1;

  use_ldrd = (TARGET_LDRD
       && (mode == DImode
    || (mode == DFmode && (TARGET_SOFT_FLOAT || TARGET_VFP))));

  if (code == POST_INC || code == PRE_DEC
      || ((code == PRE_INC || code == POST_DEC)
   && (use_ldrd || GET_MODE_SIZE (mode) <= 4)))
    return arm_address_register_rtx_p (XEXP (x, 0), strict_p);

  else if ((code == POST_MODIFY || code == PRE_MODIFY)
    && arm_address_register_rtx_p (XEXP (x, 0), strict_p)
    && GET_CODE (XEXP (x, 1)) == PLUS
    && rtx_equal_p (XEXP (XEXP (x, 1), 0), XEXP (x, 0)))
    {
      rtx addend = XEXP (XEXP (x, 1), 1);



      if (use_ldrd
   && GET_CODE (x) == POST_MODIFY
   && GET_CODE (addend) == REG)
 return 0;

      return ((use_ldrd || GET_MODE_SIZE (mode) <= 4)
       && arm_legitimate_index_p (mode, addend, outer, strict_p));
    }



  else if (reload_completed
    && (code == LABEL_REF
        || (code == CONST
     && GET_CODE (XEXP (x, 0)) == PLUS
     && GET_CODE (XEXP (XEXP (x, 0), 0)) == LABEL_REF
     && GET_CODE (XEXP (XEXP (x, 0), 1)) == CONST_INT)))
    return 1;

  else if (mode == TImode)
    return 0;

  else if (code == PLUS)
    {
      rtx xop0 = XEXP (x, 0);
      rtx xop1 = XEXP (x, 1);

      return ((arm_address_register_rtx_p (xop0, strict_p)
        && arm_legitimate_index_p (mode, xop1, outer, strict_p))
       || (arm_address_register_rtx_p (xop1, strict_p)
    && arm_legitimate_index_p (mode, xop0, outer, strict_p)));
    }
  else if (GET_MODE_CLASS (mode) != MODE_FLOAT
    && code == SYMBOL_REF
    && CONSTANT_POOL_ADDRESS_P (x)
    && ! (flag_pic
   && symbol_mentioned_p (get_pool_constant (x))
   && ! pcrel_constant_p (get_pool_constant (x))))
    return 1;

  return 0;
}
