
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int noreorder; } ;


 int NOP_INSN ;
 int add_fixed_insn (int ) ;
 int history ;
 int mips_move_labels () ;
 int mips_no_prev_insn () ;
 TYPE_1__ mips_opts ;
 int nops_for_insn (int ,int *) ;

void
mips_emit_delays (void)
{
  if (! mips_opts.noreorder)
    {
      int nops = nops_for_insn (history, ((void*)0));
      if (nops > 0)
 {
   while (nops-- > 0)
     add_fixed_insn (NOP_INSN);
   mips_move_labels ();
 }
    }
  mips_no_prev_insn ();
}
