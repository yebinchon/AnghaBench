
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST_INT ;
 int FP_REGNO_P (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 int INTVAL (int ) ;
 int MEM ;
 scalar_t__ MEM_VOLATILE_P (int ) ;




 int REGNO (int ) ;
 int XEXP (int ,int) ;
 int abort () ;

int
ia64_load_pair_ok (rtx dst, rtx src)
{
  if (GET_CODE (dst) != 128 || !FP_REGNO_P (REGNO (dst)))
    return 0;
  if (GET_CODE (src) != MEM || MEM_VOLATILE_P (src))
    return 0;
  switch (GET_CODE (XEXP (src, 0)))
    {
    case 128:
    case 130:
      break;
    case 131:
      return 0;
    case 129:
      {
 rtx adjust = XEXP (XEXP (XEXP (src, 0), 1), 1);

 if (GET_CODE (adjust) != CONST_INT
     || INTVAL (adjust) != GET_MODE_SIZE (GET_MODE (src)))
   return 0;
      }
      break;
    default:
      abort ();
    }
  return 1;
}
