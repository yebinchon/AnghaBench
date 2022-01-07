
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loops {int num; struct loop** parray; } ;
struct TYPE_2__ {scalar_t__ decision; } ;
struct loop {int num; TYPE_1__ lpt_decision; int ninsns; } ;


 int CDI_DOMINATORS ;
 scalar_t__ LPT_NONE ;
 scalar_t__ LPT_PEEL_COMPLETELY ;
 int decide_peel_completely (struct loop*,int) ;
 int decide_peel_once_rolling (struct loop*,int) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,int) ;
 int num_loop_insns (struct loop*) ;
 int peel_loop_completely (struct loops*,struct loop*) ;
 int verify_dominators (int ) ;
 int verify_loop_structure (struct loops*) ;

__attribute__((used)) static void
peel_loops_completely (struct loops *loops, int flags)
{
  struct loop *loop;
  unsigned i;


  for (i = loops->num - 1; i > 0; i--)
    {
      loop = loops->parray[i];
      if (!loop)
 continue;

      loop->lpt_decision.decision = LPT_NONE;

      if (dump_file)
 fprintf (dump_file,
   "\n;; *** Considering loop %d for complete peeling ***\n",
   loop->num);

      loop->ninsns = num_loop_insns (loop);

      decide_peel_once_rolling (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
 decide_peel_completely (loop, flags);

      if (loop->lpt_decision.decision == LPT_PEEL_COMPLETELY)
 {
   peel_loop_completely (loops, loop);




 }
    }
}
