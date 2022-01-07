
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ noreorder; scalar_t__ mips16; } ;
struct TYPE_5__ {int fixed_p; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int NOP_INSN ;
 int add_fixed_insn (int ) ;
 int frag_grow (int) ;
 int frag_new (int ) ;
 int frag_now ;
 int frag_wane (int ) ;
 TYPE_1__* history ;
 int mips16_mark_labels () ;
 int mips_any_noreorder ;
 int mips_clear_insn_labels () ;
 int mips_move_labels () ;
 scalar_t__ mips_optimize ;
 TYPE_2__ mips_opts ;
 int nops_for_insn (TYPE_1__*,int *) ;
 int prev_nop_frag ;
 int prev_nop_frag_holds ;
 scalar_t__ prev_nop_frag_required ;
 scalar_t__ prev_nop_frag_since ;

__attribute__((used)) static void
start_noreorder (void)
{
  if (mips_opts.noreorder == 0)
    {
      unsigned int i;
      int nops;


      for (i = 0; i < ARRAY_SIZE (history); i++)
 history[i].fixed_p = 1;




      nops = nops_for_insn (history, ((void*)0));
      if (nops > 0)
 {
   if (mips_optimize != 0)
     {


       frag_grow (mips_opts.mips16 ? nops * 2 : nops * 4);
       prev_nop_frag = frag_now;
       prev_nop_frag_holds = nops;
       prev_nop_frag_required = 0;
       prev_nop_frag_since = 0;
     }

   for (; nops > 0; --nops)
     add_fixed_insn (NOP_INSN);



   frag_wane (frag_now);
   frag_new (0);
   mips_move_labels ();
 }
      mips16_mark_labels ();
      mips_clear_insn_labels ();
    }
  mips_opts.noreorder++;
  mips_any_noreorder = 1;
}
