
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ SPARC_SYMBOL_REF_TLS_P (int ) ;
 int XEXP (int ,int ) ;
 scalar_t__ pic_address_needs_scratch (int ) ;

bool
legitimate_pic_operand_p (rtx x)
{
  if (pic_address_needs_scratch (x))
    return 0;
  if (SPARC_SYMBOL_REF_TLS_P (x)
      || (GET_CODE (x) == CONST
   && GET_CODE (XEXP (x, 0)) == PLUS
   && SPARC_SYMBOL_REF_TLS_P (XEXP (XEXP (x, 0), 0))))
    return 0;
  return 1;
}
