
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_10__ {TYPE_3__* next_bb; } ;
struct TYPE_9__ {scalar_t__ last_set_value; scalar_t__ last_set_label; int last_set; } ;
struct TYPE_7__ {TYPE_1__* rtl; } ;
struct TYPE_8__ {TYPE_2__ il; } ;
struct TYPE_6__ {int global_live_at_start; } ;


 TYPE_5__* ENTRY_BLOCK_PTR ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ INSN_CUID (int ) ;
 unsigned int REGNO (scalar_t__) ;
 scalar_t__ REGNO_REG_SET_P (int ,unsigned int) ;
 int REG_N_SETS (unsigned int) ;
 int REG_P (scalar_t__) ;
 scalar_t__ SUBREG ;
 scalar_t__ SUBREG_REG (scalar_t__) ;
 scalar_t__ copy_rtx (scalar_t__) ;
 scalar_t__ gen_lowpart (int ,scalar_t__) ;
 scalar_t__ get_last_value_validate (scalar_t__*,int ,scalar_t__,int) ;
 scalar_t__ label_tick ;
 TYPE_4__* reg_stat ;
 scalar_t__ subreg_lowpart_p (scalar_t__) ;
 scalar_t__ subst_low_cuid ;

__attribute__((used)) static rtx
get_last_value (rtx x)
{
  unsigned int regno;
  rtx value;




  if (GET_CODE (x) == SUBREG
      && subreg_lowpart_p (x)
      && (GET_MODE_SIZE (GET_MODE (x))
   <= GET_MODE_SIZE (GET_MODE (SUBREG_REG (x))))
      && (value = get_last_value (SUBREG_REG (x))) != 0)
    return gen_lowpart (GET_MODE (x), value);

  if (!REG_P (x))
    return 0;

  regno = REGNO (x);
  value = reg_stat[regno].last_set_value;
  if (value == 0
      || (reg_stat[regno].last_set_label != label_tick
   && (regno < FIRST_PSEUDO_REGISTER
       || REG_N_SETS (regno) != 1
       || (REGNO_REG_SET_P
    (ENTRY_BLOCK_PTR->next_bb->il.rtl->global_live_at_start,
     regno)))))
    return 0;



  if (INSN_CUID (reg_stat[regno].last_set) >= subst_low_cuid)
    return 0;


  if (get_last_value_validate (&value, reg_stat[regno].last_set,
          reg_stat[regno].last_set_label, 0))
    return value;




  value = copy_rtx (value);
  if (get_last_value_validate (&value, reg_stat[regno].last_set,
          reg_stat[regno].last_set_label, 1))
    return value;

  return 0;
}
