
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int CONST_INT ;
 int GET_CODE (int ) ;

 int PLUS ;

 int SYMBOL_REF_TLS_MODEL (int ) ;
 int TARGET_64BIT ;
 int TLS_MODEL_LOCAL_EXEC ;
 int UNSPEC ;


 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int legitimate_pic_address_disp_p (int ) ;

bool
legitimate_pic_operand_p (rtx x)
{
  rtx inner;

  switch (GET_CODE (x))
    {
    case 132:
      inner = XEXP (x, 0);
      if (GET_CODE (inner) == PLUS
   && GET_CODE (XEXP (inner, 1)) == CONST_INT)
 inner = XEXP (inner, 0);


      if (GET_CODE (inner) == UNSPEC)
 switch (XINT (inner, 1))
   {
   case 129:
     return TARGET_64BIT;
   case 128:
     x = XVECEXP (inner, 0, 0);
     return (GET_CODE (x) == 130
      && SYMBOL_REF_TLS_MODEL (x) == TLS_MODEL_LOCAL_EXEC);
   default:
     return 0;
   }


    case 130:
    case 131:
      return legitimate_pic_address_disp_p (x);

    default:
      return 1;
    }
}
