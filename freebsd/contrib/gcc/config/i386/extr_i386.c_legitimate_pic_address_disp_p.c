
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int const CONST_INT ;
 int const GET_CODE (int ) ;
 int INTVAL (int ) ;

 int const PLUS ;
 int Pmode ;

 int SYMBOL_REF_FAR_ADDR_P (int ) ;
 int SYMBOL_REF_LOCAL_P (int ) ;
 int SYMBOL_REF_TLS_MODEL (int ) ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_MACHO ;
 int TLS_MODEL_INITIAL_EXEC ;
 int TLS_MODEL_LOCAL_DYNAMIC ;
 int TLS_MODEL_LOCAL_EXEC ;
 int const UNSPEC ;




 int UNSPEC_GOTPCREL ;



 int XEXP (int ,int) ;
 int XINT (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 scalar_t__ darwin_local_data_pic (int ) ;
 int local_symbolic_operand (int ,int ) ;

int
legitimate_pic_address_disp_p (rtx disp)
{
  bool saw_plus;



  if (TARGET_64BIT)
    {
      rtx op0 = disp, op1;

      switch (GET_CODE (disp))
 {
 case 136:
   return 1;

 case 137:
   if (GET_CODE (XEXP (disp, 0)) != PLUS)
     break;
   op0 = XEXP (XEXP (disp, 0), 0);
   op1 = XEXP (XEXP (disp, 0), 1);
   if (GET_CODE (op1) != CONST_INT
       || INTVAL (op1) >= 16*1024*1024
       || INTVAL (op1) < -16*1024*1024)
            break;
   if (GET_CODE (op0) == 136)
     return 1;
   if (GET_CODE (op0) != 135)
     break;


 case 135:

   if (SYMBOL_REF_TLS_MODEL (op0))
     return 0;
   if (!SYMBOL_REF_FAR_ADDR_P (op0) && SYMBOL_REF_LOCAL_P (op0))
     return 1;
   break;

 default:
   break;
 }
    }
  if (GET_CODE (disp) != 137)
    return 0;
  disp = XEXP (disp, 0);

  if (TARGET_64BIT)
    {


      if (GET_CODE (disp) != UNSPEC
   || (XINT (disp, 1) != UNSPEC_GOTPCREL
       && XINT (disp, 1) != 131))
 return 0;

      if (GET_CODE (XVECEXP (disp, 0, 0)) != 135
   && GET_CODE (XVECEXP (disp, 0, 0)) != 136)
 return 0;
      return 1;
    }

  saw_plus = 0;
  if (GET_CODE (disp) == PLUS)
    {
      if (GET_CODE (XEXP (disp, 1)) != CONST_INT)
 return 0;
      disp = XEXP (disp, 0);
      saw_plus = 1;
    }

  if (TARGET_MACHO && darwin_local_data_pic (disp))
    return 1;

  if (GET_CODE (disp) != UNSPEC)
    return 0;

  switch (XINT (disp, 1))
    {
    case 133:
      if (saw_plus)
 return 0;
      return GET_CODE (XVECEXP (disp, 0, 0)) == 135;
    case 131:



      if ((GET_CODE (XVECEXP (disp, 0, 0)) == 135
    || GET_CODE (XVECEXP (disp, 0, 0)) == 136)
   && !TARGET_64BIT)
        return local_symbolic_operand (XVECEXP (disp, 0, 0), Pmode);
      return 0;
    case 130:
    case 132:
    case 129:
      if (saw_plus)
 return 0;
      disp = XVECEXP (disp, 0, 0);
      return (GET_CODE (disp) == 135
       && SYMBOL_REF_TLS_MODEL (disp) == TLS_MODEL_INITIAL_EXEC);
    case 128:
      disp = XVECEXP (disp, 0, 0);
      return (GET_CODE (disp) == 135
       && SYMBOL_REF_TLS_MODEL (disp) == TLS_MODEL_LOCAL_EXEC);
    case 134:
      disp = XVECEXP (disp, 0, 0);
      return (GET_CODE (disp) == 135
       && SYMBOL_REF_TLS_MODEL (disp) == TLS_MODEL_LOCAL_DYNAMIC);
    }

  return 0;
}
