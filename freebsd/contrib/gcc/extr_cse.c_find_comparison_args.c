
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ exp; struct table_elt* next_same_value; scalar_t__ is_const; struct table_elt* first_same_value; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef scalar_t__ REAL_VALUE_TYPE ;
typedef int HOST_WIDE_INT ;


 scalar_t__ COMPARE ;
 scalar_t__ COMPARISON_P (scalar_t__) ;
 scalar_t__ CONST0_RTX (int) ;
 int EQ ;
 scalar_t__ FLOAT_STORE_FLAG_VALUE (int) ;
 int GE ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int LT ;
 scalar_t__ MODE_INT ;
 int NE ;
 int NULL_RTX ;
 int REAL_VALUE_NEGATIVE (scalar_t__) ;
 int SAFE_HASH (scalar_t__,int) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 int STORE_FLAG_VALUE ;
 int UNKNOWN ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ const0_rtx ;
 int exp_equiv_p (scalar_t__,scalar_t__,int,int) ;
 scalar_t__ fold_rtx (scalar_t__,int ) ;
 struct table_elt* lookup (scalar_t__,int ,int) ;
 int reversed_comparison_code (scalar_t__,int ) ;
 int rtx_addr_can_trap_p (scalar_t__) ;

__attribute__((used)) static enum rtx_code
find_comparison_args (enum rtx_code code, rtx *parg1, rtx *parg2,
        enum machine_mode *pmode1, enum machine_mode *pmode2)
{
  rtx arg1, arg2;

  arg1 = *parg1, arg2 = *parg2;



  while (arg2 == CONST0_RTX (GET_MODE (arg1)))
    {

      rtx x = 0;
      int reverse_code = 0;
      struct table_elt *p = 0;






      if (GET_CODE (arg1) == COMPARE && arg2 == const0_rtx)
 x = arg1;




      else if (COMPARISON_P (arg1))
 {




   if (code == NE
       || (GET_MODE_CLASS (GET_MODE (arg1)) == MODE_INT
    && code == LT && STORE_FLAG_VALUE == -1)





       )
     x = arg1;
   else if (code == EQ
     || (GET_MODE_CLASS (GET_MODE (arg1)) == MODE_INT
         && code == GE && STORE_FLAG_VALUE == -1)





     )
     x = arg1, reverse_code = 1;
 }







      if (x == 0)


 p = lookup (arg1, SAFE_HASH (arg1, GET_MODE (arg1)), GET_MODE (arg1));
      if (p)
 {
   p = p->first_same_value;
   if (p->is_const)
     break;
 }

      for (; p; p = p->next_same_value)
 {
   enum machine_mode inner_mode = GET_MODE (p->exp);





   if (! exp_equiv_p (p->exp, p->exp, 1, 0))
     continue;

   if (GET_CODE (p->exp) == COMPARE







       || ((code == NE
     || (code == LT
         && GET_MODE_CLASS (inner_mode) == MODE_INT
         && (GET_MODE_BITSIZE (inner_mode)
      <= HOST_BITS_PER_WIDE_INT)
         && (STORE_FLAG_VALUE
      & ((HOST_WIDE_INT) 1
         << (GET_MODE_BITSIZE (inner_mode) - 1))))






     )
    && COMPARISON_P (p->exp)))
     {
       x = p->exp;
       break;
     }
   else if ((code == EQ
      || (code == GE
   && GET_MODE_CLASS (inner_mode) == MODE_INT
   && (GET_MODE_BITSIZE (inner_mode)
       <= HOST_BITS_PER_WIDE_INT)
   && (STORE_FLAG_VALUE
       & ((HOST_WIDE_INT) 1
          << (GET_MODE_BITSIZE (inner_mode) - 1))))






      )
     && COMPARISON_P (p->exp))
     {
       reverse_code = 1;
       x = p->exp;
       break;
     }




   else if (!rtx_addr_can_trap_p (p->exp))
     {
       arg1 = p->exp;
       continue;
     }
 }



      if (x == 0)
 break;




      if (reverse_code)
 {
   enum rtx_code reversed = reversed_comparison_code (x, NULL_RTX);
   if (reversed == UNKNOWN)
     break;
   else
     code = reversed;
 }
      else if (COMPARISON_P (x))
 code = GET_CODE (x);
      arg1 = XEXP (x, 0), arg2 = XEXP (x, 1);
    }



  *pmode1 = GET_MODE (arg1), *pmode2 = GET_MODE (arg2);
  *parg1 = fold_rtx (arg1, 0), *parg2 = fold_rtx (arg2, 0);

  return code;
}
