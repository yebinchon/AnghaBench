
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ mips16_gp_pseudo_rtx; } ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NOTE_INSN_FUNCTION_BEG ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int Pmode ;
 int UNSPEC_GP ;
 int VOIDmode ;
 TYPE_2__* cfun ;
 int const0_rtx ;
 scalar_t__ emit_insn_after (scalar_t__,scalar_t__) ;
 int emit_move_insn (scalar_t__,int ) ;
 int end_sequence () ;
 scalar_t__ gen_reg_rtx (int ) ;
 int gen_rtvec (int,int ) ;
 int gen_rtx_CONST (int ,scalar_t__) ;
 scalar_t__ gen_rtx_UNSPEC (int ,int ,int ) ;
 scalar_t__ get_insns () ;
 int pop_topmost_sequence () ;
 int push_topmost_sequence () ;
 int start_sequence () ;

__attribute__((used)) static rtx
mips16_gp_pseudo_reg (void)
{
  if (cfun->machine->mips16_gp_pseudo_rtx == NULL_RTX)
    {
      rtx unspec;
      rtx insn, scan;

      cfun->machine->mips16_gp_pseudo_rtx = gen_reg_rtx (Pmode);



      start_sequence ();
      unspec = gen_rtx_UNSPEC (VOIDmode, gen_rtvec (1, const0_rtx), UNSPEC_GP);
      emit_move_insn (cfun->machine->mips16_gp_pseudo_rtx,
        gen_rtx_CONST (Pmode, unspec));
      insn = get_insns ();
      end_sequence ();

      push_topmost_sequence ();


      for (scan = get_insns (); scan != NULL_RTX; scan = NEXT_INSN (scan))
 if (NOTE_P (scan)
     && NOTE_LINE_NUMBER (scan) == NOTE_INSN_FUNCTION_BEG)
   break;
      if (scan == NULL_RTX)
 scan = get_insns ();
      insn = emit_insn_after (insn, scan);
      pop_topmost_sequence ();
    }

  return cfun->machine->mips16_gp_pseudo_rtx;
}
