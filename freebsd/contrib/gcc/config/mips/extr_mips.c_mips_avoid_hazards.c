
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int ignore_hazard_length_p; int all_noreorder_p; } ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int ISA_HAS_MACCHI ;
 int LO_REGNUM ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ SEQUENCE ;
 int SImode ;
 scalar_t__ TARGET_FIX_VR4120 ;
 scalar_t__ TARGET_FIX_VR4130 ;
 scalar_t__ XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 TYPE_2__* cfun ;
 scalar_t__ current_function_profile ;
 scalar_t__ gen_rtx_REG (int ,int ) ;
 scalar_t__ get_insns () ;
 int mips_avoid_hazard (scalar_t__,scalar_t__,int*,scalar_t__*,scalar_t__) ;
 int shorten_branches (scalar_t__) ;
 int split_all_insns_noflow () ;

__attribute__((used)) static void
mips_avoid_hazards (void)
{
  rtx insn, last_insn, lo_reg, delayed_reg;
  int hilo_delay, i;


  split_all_insns_noflow ();


  cfun->machine->ignore_hazard_length_p = 1;
  shorten_branches (get_insns ());

  cfun->machine->all_noreorder_p = 1;



  if (current_function_profile)
    cfun->machine->all_noreorder_p = 0;



  if (TARGET_FIX_VR4120)
    cfun->machine->all_noreorder_p = 0;





  if (TARGET_FIX_VR4130 && !ISA_HAS_MACCHI)
    cfun->machine->all_noreorder_p = 0;

  last_insn = 0;
  hilo_delay = 2;
  delayed_reg = 0;
  lo_reg = gen_rtx_REG (SImode, LO_REGNUM);

  for (insn = get_insns (); insn != 0; insn = NEXT_INSN (insn))
    if (INSN_P (insn))
      {
 if (GET_CODE (PATTERN (insn)) == SEQUENCE)
   for (i = 0; i < XVECLEN (PATTERN (insn), 0); i++)
     mips_avoid_hazard (last_insn, XVECEXP (PATTERN (insn), 0, i),
          &hilo_delay, &delayed_reg, lo_reg);
 else
   mips_avoid_hazard (last_insn, insn, &hilo_delay,
        &delayed_reg, lo_reg);

 last_insn = insn;
      }
}
