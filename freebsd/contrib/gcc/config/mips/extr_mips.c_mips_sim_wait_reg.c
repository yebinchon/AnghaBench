
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_sim {unsigned int time; TYPE_1__* last_set; } ;
typedef int rtx ;
struct TYPE_2__ {scalar_t__ insn; unsigned int time; } ;


 int GET_MODE (int ) ;
 unsigned int HARD_REGNO_NREGS (unsigned int,int ) ;
 unsigned int REGNO (int ) ;
 scalar_t__ insn_latency (scalar_t__,int ) ;
 int mips_sim_next_cycle (struct mips_sim*) ;

__attribute__((used)) static void
mips_sim_wait_reg (struct mips_sim *state, rtx insn, rtx reg)
{
  unsigned int i;

  for (i = 0; i < HARD_REGNO_NREGS (REGNO (reg), GET_MODE (reg)); i++)
    if (state->last_set[REGNO (reg) + i].insn != 0)
      {
 unsigned int t;

 t = state->last_set[REGNO (reg) + i].time;
 t += insn_latency (state->last_set[REGNO (reg) + i].insn, insn);
 while (state->time < t)
   mips_sim_next_cycle (state);
    }
}
