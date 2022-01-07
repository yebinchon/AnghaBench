
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int all_noreorder_p; } ;


 scalar_t__ ASM_INPUT ;
 scalar_t__ GET_CODE (scalar_t__) ;



 scalar_t__ INSN_CODE (scalar_t__) ;
 int INSN_P (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ asm_noperands (scalar_t__) ;
 TYPE_2__* cfun ;
 int emit_insn_after (int ,scalar_t__) ;
 int gcc_assert (int) ;
 int gen_hazard_nop () ;
 int get_attr_hazard (scalar_t__) ;
 int get_attr_length (scalar_t__) ;
 scalar_t__ reg_referenced_p (scalar_t__,scalar_t__) ;
 scalar_t__ reg_set_p (scalar_t__,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;

__attribute__((used)) static void
mips_avoid_hazard (rtx after, rtx insn, int *hilo_delay,
     rtx *delayed_reg, rtx lo_reg)
{
  rtx pattern, set;
  int nops, ninsns;

  if (!INSN_P (insn))
    return;

  pattern = PATTERN (insn);




  if (GET_CODE (pattern) == ASM_INPUT || asm_noperands (pattern) >= 0)
    cfun->machine->all_noreorder_p = 0;


  ninsns = get_attr_length (insn) / 4;
  if (ninsns == 0)
    return;





  if (*hilo_delay < 2 && reg_set_p (lo_reg, pattern))
    nops = 2 - *hilo_delay;
  else if (*delayed_reg != 0 && reg_referenced_p (*delayed_reg, pattern))
    nops = 1;
  else
    nops = 0;



  *hilo_delay += nops;
  while (nops-- > 0)
    emit_insn_after (gen_hazard_nop (), after);


  *hilo_delay += ninsns;
  *delayed_reg = 0;
  if (INSN_CODE (insn) >= 0)
    switch (get_attr_hazard (insn))
      {
      case 128:
 break;

      case 129:
 *hilo_delay = 0;
 break;

      case 130:
 set = single_set (insn);
 gcc_assert (set != 0);
 *delayed_reg = SET_DEST (set);
 break;
      }
}
