
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int CONST0_RTX (int ) ;

 int CONST_INT ;

 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int LABEL_REF ;
 int PLUS ;

 int SYMBOL_REF_TLS_MODEL (int ) ;
 int TARGET_64BIT ;
 int TARGET_MACHO ;
 int TImode ;
 int TLS_MODEL_LOCAL_DYNAMIC ;
 int TLS_MODEL_LOCAL_EXEC ;
 int UNSPEC ;




 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int darwin_local_data_pic (int ) ;

bool
legitimate_constant_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 135:
      x = XEXP (x, 0);

      if (GET_CODE (x) == PLUS)
 {
   if (GET_CODE (XEXP (x, 1)) != CONST_INT)
     return 0;
   x = XEXP (x, 0);
 }

      if (TARGET_MACHO && darwin_local_data_pic (x))
 return 1;


      if (GET_CODE (x) == UNSPEC)
 switch (XINT (x, 1))
   {
   case 130:
     return TARGET_64BIT;
   case 128:
   case 129:
     x = XVECEXP (x, 0, 0);
     return (GET_CODE (x) == 132
      && SYMBOL_REF_TLS_MODEL (x) == TLS_MODEL_LOCAL_EXEC);
   case 131:
     x = XVECEXP (x, 0, 0);
     return (GET_CODE (x) == 132
      && SYMBOL_REF_TLS_MODEL (x) == TLS_MODEL_LOCAL_DYNAMIC);
   default:
     return 0;
   }


      if (GET_CODE (x) == LABEL_REF)
 return 1;
      if (GET_CODE (x) != 132)
 return 0;


    case 132:

      if (SYMBOL_REF_TLS_MODEL (x))
 return 0;
      break;

    case 134:
      if (GET_MODE (x) == TImode
   && x != CONST0_RTX (TImode)
          && !TARGET_64BIT)
 return 0;
      break;

    case 133:
      if (x == CONST0_RTX (GET_MODE (x)))
 return 1;
      return 0;

    default:
      break;
    }


  return 1;
}
