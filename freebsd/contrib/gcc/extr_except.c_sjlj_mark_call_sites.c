
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sjlj_lp_info {int call_site_index; } ;
struct eh_region {size_t region_number; } ;
typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int sjlj_fc; int region_array; } ;


 scalar_t__ CALL_P (scalar_t__) ;
 int GEN_INT (int) ;
 int INSN_P (scalar_t__) ;
 scalar_t__ INTVAL (int ) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NULL_RTX ;
 int PATTERN (scalar_t__) ;
 int REG_EH_REGION ;
 int TYPE_MODE (int ) ;
 struct eh_region* VEC_index (int ,int ,scalar_t__) ;
 int XEXP (scalar_t__,int ) ;
 scalar_t__ adjust_address (int ,int ,int ) ;
 TYPE_2__* cfun ;
 int eh_region ;
 int emit_insn_before (scalar_t__,scalar_t__) ;
 int emit_move_insn (scalar_t__,int ) ;
 int end_sequence () ;
 scalar_t__ find_first_parameter_load (scalar_t__,int ) ;
 scalar_t__ find_reg_note (scalar_t__,int ,int ) ;
 scalar_t__ flag_non_call_exceptions ;
 scalar_t__ get_insns () ;
 int integer_type_node ;
 scalar_t__ may_trap_p (int ) ;
 int sjlj_fc_call_site_ofs ;
 int start_sequence () ;

__attribute__((used)) static void
sjlj_mark_call_sites (struct sjlj_lp_info *lp_info)
{
  int last_call_site = -2;
  rtx insn, mem;

  for (insn = get_insns (); insn ; insn = NEXT_INSN (insn))
    {
      struct eh_region *region;
      int this_call_site;
      rtx note, before, p;


      if (LABEL_P (insn))
 last_call_site = -2;

      if (! INSN_P (insn))
 continue;

      note = find_reg_note (insn, REG_EH_REGION, NULL_RTX);
      if (!note)
 {



   if (CALL_P (insn)
       || (flag_non_call_exceptions
    && may_trap_p (PATTERN (insn))))
     this_call_site = -1;
   else
     continue;
 }
      else
 {

   if (INTVAL (XEXP (note, 0)) <= 0)
     continue;

   region = VEC_index (eh_region, cfun->eh->region_array, INTVAL (XEXP (note, 0)));
   this_call_site = lp_info[region->region_number].call_site_index;
 }

      if (this_call_site == last_call_site)
 continue;


      before = insn;
      if (CALL_P (insn))
 before = find_first_parameter_load (insn, NULL_RTX);

      start_sequence ();
      mem = adjust_address (cfun->eh->sjlj_fc, TYPE_MODE (integer_type_node),
       sjlj_fc_call_site_ofs);
      emit_move_insn (mem, GEN_INT (this_call_site));
      p = get_insns ();
      end_sequence ();

      emit_insn_before (p, before);
      last_call_site = this_call_site;
    }
}
