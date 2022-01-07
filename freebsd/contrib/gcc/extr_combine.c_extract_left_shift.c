
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;




 int CONST_INT ;
 int GEN_INT (int) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int INTVAL (int ) ;



 int NULL_RTX ;

 int XEXP (int ,int) ;

 int simplify_gen_binary (int,int,int ,int ) ;
 int simplify_gen_unary (int,int,int ,int) ;
 int simplify_shift_const (int ,int const,int,int ,int ) ;

__attribute__((used)) static rtx
extract_left_shift (rtx x, int count)
{
  enum rtx_code code = GET_CODE (x);
  enum machine_mode mode = GET_MODE (x);
  rtx tem;

  switch (code)
    {
    case 133:



      if (GET_CODE (XEXP (x, 1)) == CONST_INT
   && INTVAL (XEXP (x, 1)) >= count)
 return simplify_shift_const (NULL_RTX, 133, mode, XEXP (x, 0),
         INTVAL (XEXP (x, 1)) - count);
      break;

    case 131: case 130:
      if ((tem = extract_left_shift (XEXP (x, 0), count)) != 0)
 return simplify_gen_unary (code, mode, tem, mode);

      break;

    case 129: case 132: case 128: case 134:


      if (GET_CODE (XEXP (x, 1)) == CONST_INT
   && (INTVAL (XEXP (x, 1)) & ((((HOST_WIDE_INT) 1 << count)) - 1)) == 0
   && (tem = extract_left_shift (XEXP (x, 0), count)) != 0)
 return simplify_gen_binary (code, mode, tem,
        GEN_INT (INTVAL (XEXP (x, 1)) >> count));

      break;

    default:
      break;
    }

  return 0;
}
