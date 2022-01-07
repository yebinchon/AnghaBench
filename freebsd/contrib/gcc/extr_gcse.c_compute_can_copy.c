
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ LAST_VIRTUAL_REGISTER ;
 scalar_t__ MODE_CC ;
 int NUM_MACHINE_MODES ;
 int PATTERN (int ) ;
 int VOIDmode ;
 int* can_copy ;
 int emit_insn (int ) ;
 int end_sequence () ;
 int gen_rtx_REG (int,scalar_t__) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int memset (int*,int ,int) ;
 scalar_t__ recog (int ,int ,int *) ;
 int start_sequence () ;

__attribute__((used)) static void
compute_can_copy (void)
{
  int i;

  rtx reg, insn;

  memset (can_copy, 0, NUM_MACHINE_MODES);

  start_sequence ();
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    if (GET_MODE_CLASS (i) == MODE_CC)
      {



 reg = gen_rtx_REG ((enum machine_mode) i, LAST_VIRTUAL_REGISTER + 1);
 insn = emit_insn (gen_rtx_SET (VOIDmode, reg, reg));
 if (recog (PATTERN (insn), insn, ((void*)0)) >= 0)
   can_copy[i] = 1;

      }
    else
      can_copy[i] = 1;

  end_sequence ();
}
