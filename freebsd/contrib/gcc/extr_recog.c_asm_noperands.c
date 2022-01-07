
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int ASM_OPERANDS_INPUT_LENGTH (int ) ;
 int ASM_OPERANDS_INPUT_VEC (int ) ;
 int const CLOBBER ;
 int const GET_CODE (int ) ;


 int SET_SRC (int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;

int
asm_noperands (rtx body)
{
  switch (GET_CODE (body))
    {
    case 130:

      return ASM_OPERANDS_INPUT_LENGTH (body);
    case 128:
      if (GET_CODE (SET_SRC (body)) == 130)

 return ASM_OPERANDS_INPUT_LENGTH (SET_SRC (body)) + 1;
      else
 return -1;
    case 129:
      if (GET_CODE (XVECEXP (body, 0, 0)) == 128
   && GET_CODE (SET_SRC (XVECEXP (body, 0, 0))) == 130)
 {


   int i;
   int n_sets;


   for (i = XVECLEN (body, 0); i > 0; i--)
     {
       if (GET_CODE (XVECEXP (body, 0, i - 1)) == 128)
  break;
       if (GET_CODE (XVECEXP (body, 0, i - 1)) != CLOBBER)
  return -1;
     }


   n_sets = i;




   for (i = 0; i < n_sets; i++)
     {
       rtx elt = XVECEXP (body, 0, i);
       if (GET_CODE (elt) != 128)
  return -1;
       if (GET_CODE (SET_SRC (elt)) != 130)
  return -1;


       if (ASM_OPERANDS_INPUT_VEC (SET_SRC (elt))
    != ASM_OPERANDS_INPUT_VEC (SET_SRC (XVECEXP (body, 0, 0))))
  return -1;
     }
   return (ASM_OPERANDS_INPUT_LENGTH (SET_SRC (XVECEXP (body, 0, 0)))
    + n_sets);
 }
      else if (GET_CODE (XVECEXP (body, 0, 0)) == 130)
 {


   int i;


   for (i = XVECLEN (body, 0) - 1; i > 0; i--)
     if (GET_CODE (XVECEXP (body, 0, i)) != CLOBBER)
       return -1;

   return ASM_OPERANDS_INPUT_LENGTH (XVECEXP (body, 0, 0));
 }
      else
 return -1;
    default:
      return -1;
    }
}
