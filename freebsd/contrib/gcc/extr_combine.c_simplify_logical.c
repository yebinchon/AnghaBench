
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;



 int const CONST_INT ;
 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 int HOST_BITS_PER_WIDE_INT ;
 int INTVAL (int ) ;

 int XEXP (int ,int) ;
 int const XOR ;
 int distribute_and_simplify_rtx (int ,int) ;
 int gcc_unreachable () ;
 int simplify_and_const_int (int ,int,int ,int ) ;

__attribute__((used)) static rtx
simplify_logical (rtx x)
{
  enum machine_mode mode = GET_MODE (x);
  rtx op0 = XEXP (x, 0);
  rtx op1 = XEXP (x, 1);

  switch (GET_CODE (x))
    {
    case 129:



      if (GET_CODE (op1) == CONST_INT
   && (GET_MODE_BITSIZE (mode) <= HOST_BITS_PER_WIDE_INT
       || INTVAL (op1) > 0))
 {
   x = simplify_and_const_int (x, mode, op0, INTVAL (op1));
   if (GET_CODE (x) != 129)
     return x;

   op0 = XEXP (x, 0);
   op1 = XEXP (x, 1);
 }




      if (GET_CODE (op0) == 128 || GET_CODE (op0) == XOR)
 {
   rtx result = distribute_and_simplify_rtx (x, 0);
   if (result)
     return result;
 }
      if (GET_CODE (op1) == 128 || GET_CODE (op1) == XOR)
 {
   rtx result = distribute_and_simplify_rtx (x, 1);
   if (result)
     return result;
 }
      break;

    case 128:



      if (GET_CODE (op0) == 129)
 {
   rtx result = distribute_and_simplify_rtx (x, 0);
   if (result)
     return result;
 }

      if (GET_CODE (op1) == 129)
 {
   rtx result = distribute_and_simplify_rtx (x, 1);
   if (result)
     return result;
 }
      break;

    default:
      gcc_unreachable ();
    }

  return x;
}
