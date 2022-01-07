
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ truncated_to_mode; scalar_t__ truncation_label; } ;


 size_t FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_BITSIZE (int) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 size_t REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 scalar_t__ TRULY_NOOP_TRUNCATION (int ,int ) ;
 scalar_t__ label_tick ;
 TYPE_1__* reg_stat ;

__attribute__((used)) static void
record_truncated_value (rtx x)
{
  enum machine_mode truncated_mode;

  if (GET_CODE (x) == SUBREG && REG_P (SUBREG_REG (x)))
    {
      enum machine_mode original_mode = GET_MODE (SUBREG_REG (x));
      truncated_mode = GET_MODE (x);

      if (GET_MODE_SIZE (original_mode) <= GET_MODE_SIZE (truncated_mode))
 return;

      if (TRULY_NOOP_TRUNCATION (GET_MODE_BITSIZE (truncated_mode),
     GET_MODE_BITSIZE (original_mode)))
 return;

      x = SUBREG_REG (x);
    }


  else if (REG_P (x) && REGNO (x) < FIRST_PSEUDO_REGISTER)
    truncated_mode = GET_MODE (x);
  else
    return;

  if (reg_stat[REGNO (x)].truncated_to_mode == 0
      || reg_stat[REGNO (x)].truncation_label < label_tick
      || (GET_MODE_SIZE (truncated_mode)
   < GET_MODE_SIZE (reg_stat[REGNO (x)].truncated_to_mode)))
    {
      reg_stat[REGNO (x)].truncated_to_mode = truncated_mode;
      reg_stat[REGNO (x)].truncation_label = label_tick;
    }
}
