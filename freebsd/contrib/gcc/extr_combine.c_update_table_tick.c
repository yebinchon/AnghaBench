
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {int last_set_table_tick; } ;


 scalar_t__ ARITHMETIC_P (scalar_t__) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (scalar_t__) ;
 size_t GET_MODE (scalar_t__) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int REG ;
 unsigned int REGNO (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int** hard_regno_nregs ;
 int label_tick ;
 TYPE_1__* reg_stat ;

__attribute__((used)) static void
update_table_tick (rtx x)
{
  enum rtx_code code = GET_CODE (x);
  const char *fmt = GET_RTX_FORMAT (code);
  int i;

  if (code == REG)
    {
      unsigned int regno = REGNO (x);
      unsigned int endregno
 = regno + (regno < FIRST_PSEUDO_REGISTER
     ? hard_regno_nregs[regno][GET_MODE (x)] : 1);
      unsigned int r;

      for (r = regno; r < endregno; r++)
 reg_stat[r].last_set_table_tick = label_tick;

      return;
    }

  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)


    if (fmt[i] == 'e')
      {



 if (i == 0 && ARITHMETIC_P (x))
   {


     rtx x0 = XEXP (x, 0);
     rtx x1 = XEXP (x, 1);



     if (x0 == x1)
       break;




     if (ARITHMETIC_P (x1)
  && (x0 == XEXP (x1, 0) || x0 == XEXP (x1, 1)))
       break;



     if (ARITHMETIC_P (x0)
  && (x1 == XEXP (x0, 0) || x1 == XEXP (x0, 1)))
       {
  update_table_tick (XEXP (x0, x1 == XEXP (x0, 0) ? 1 : 0));
  break;
       }
   }

 update_table_tick (XEXP (x, i));
      }
}
