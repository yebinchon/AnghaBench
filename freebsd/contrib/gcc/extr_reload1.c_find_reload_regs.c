
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct reload {int dummy; } ;
struct insn_chain {int n_reloads; TYPE_1__* rld; int used_spill_regs; int insn; } ;
struct TYPE_4__ {int regno; scalar_t__ out; scalar_t__ in; int class; int optional; scalar_t__ secondary_p; scalar_t__ reg_rtx; int nregs; } ;


 int CLEAR_HARD_REG_SET (int ) ;
 int COPY_HARD_REG_SET (int ,int ) ;
 size_t GET_MODE (scalar_t__) ;
 int INSN_UID (int ) ;
 int IOR_HARD_REG_SET (int ,int ) ;
 int REGNO (scalar_t__) ;
 scalar_t__ dump_file ;
 int failure ;
 int find_reg (struct insn_chain*,int) ;
 int fprintf (scalar_t__,char*,int) ;
 int ** hard_regno_nregs ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int n_reloads ;
 int order_regs_for_reload (struct insn_chain*) ;
 int qsort (int*,int,int,int ) ;
 int* reload_order ;
 int reload_reg_class_lower ;
 TYPE_1__* rld ;
 int spill_failure (int ,int ) ;
 int used_spill_regs ;
 int used_spill_regs_local ;

__attribute__((used)) static void
find_reload_regs (struct insn_chain *chain)
{
  int i;





  for (i = 0; i < chain->n_reloads; i++)
    {

      if (chain->rld[i].reg_rtx)
 {
   int regno = REGNO (chain->rld[i].reg_rtx);
   chain->rld[i].regno = regno;
   chain->rld[i].nregs
     = hard_regno_nregs[regno][GET_MODE (chain->rld[i].reg_rtx)];
 }
      else
 chain->rld[i].regno = -1;
      reload_order[i] = i;
    }

  n_reloads = chain->n_reloads;
  memcpy (rld, chain->rld, n_reloads * sizeof (struct reload));

  CLEAR_HARD_REG_SET (used_spill_regs_local);

  if (dump_file)
    fprintf (dump_file, "Spilling for insn %d.\n", INSN_UID (chain->insn));

  qsort (reload_order, n_reloads, sizeof (short), reload_reg_class_lower);



  order_regs_for_reload (chain);

  for (i = 0; i < n_reloads; i++)
    {
      int r = reload_order[i];


      if ((rld[r].out != 0 || rld[r].in != 0 || rld[r].secondary_p)
   && ! rld[r].optional
   && rld[r].regno == -1)
 if (! find_reg (chain, i))
   {
     if (dump_file)
       fprintf(dump_file, "reload failure for reload %d\n", r);
     spill_failure (chain->insn, rld[r].class);
     failure = 1;
     return;
   }
    }

  COPY_HARD_REG_SET (chain->used_spill_regs, used_spill_regs_local);
  IOR_HARD_REG_SET (used_spill_regs, used_spill_regs_local);

  memcpy (chain->rld, rld, n_reloads * sizeof (struct reload));
}
