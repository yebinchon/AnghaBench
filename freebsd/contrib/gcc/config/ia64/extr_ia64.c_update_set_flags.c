
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_flags {int is_fp; int is_and; int is_or; } ;
typedef int rtx ;


 int AND ;

 int COMPARISON_P (int ) ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;

 int IOR ;
 int SCALAR_FLOAT_MODE_P (int ) ;
 int SET_SRC (int ) ;
 int XEXP (int ,int ) ;

__attribute__((used)) static void
update_set_flags (rtx x, struct reg_flags *pflags)
{
  rtx src = SET_SRC (x);

  switch (GET_CODE (src))
    {
    case 129:
      return;

    case 128:
      return;

    default:
      if (COMPARISON_P (src)
   && SCALAR_FLOAT_MODE_P (GET_MODE (XEXP (src, 0))))



 pflags->is_fp = 1;




      else if (GET_CODE (src) == AND)
 pflags->is_and = 1;
      else if (GET_CODE (src) == IOR)
 pflags->is_or = 1;

      break;
    }
}
