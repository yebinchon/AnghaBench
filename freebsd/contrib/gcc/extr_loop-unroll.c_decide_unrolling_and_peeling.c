
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loops {struct loop* tree_root; } ;
struct TYPE_2__ {scalar_t__ decision; } ;
struct loop {int num; TYPE_1__ lpt_decision; int av_ninsns; int ninsns; struct loop* inner; int header; struct loop* outer; struct loop* next; } ;


 scalar_t__ LPT_NONE ;
 int average_num_loop_insns (struct loop*) ;
 int can_duplicate_loop_p (struct loop*) ;
 int decide_peel_simple (struct loop*,int) ;
 int decide_unroll_constant_iterations (struct loop*,int) ;
 int decide_unroll_runtime_iterations (struct loop*,int) ;
 int decide_unroll_stupid (struct loop*,int) ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,...) ;
 int maybe_hot_bb_p (int ) ;
 int num_loop_insns (struct loop*) ;

__attribute__((used)) static void
decide_unrolling_and_peeling (struct loops *loops, int flags)
{
  struct loop *loop = loops->tree_root, *next;

  while (loop->inner)
    loop = loop->inner;


  while (loop != loops->tree_root)
    {
      if (loop->next)
 {
   next = loop->next;
   while (next->inner)
     next = next->inner;
 }
      else
 next = loop->outer;

      loop->lpt_decision.decision = LPT_NONE;

      if (dump_file)
 fprintf (dump_file, "\n;; *** Considering loop %d ***\n", loop->num);


      if (!maybe_hot_bb_p (loop->header))
 {
   if (dump_file)
     fprintf (dump_file, ";; Not considering loop, cold area\n");
   loop = next;
   continue;
 }


      if (!can_duplicate_loop_p (loop))
 {
   if (dump_file)
     fprintf (dump_file,
       ";; Not considering loop, cannot duplicate\n");
   loop = next;
   continue;
 }


      if (loop->inner)
 {
   if (dump_file)
     fprintf (dump_file, ";; Not considering loop, is not innermost\n");
   loop = next;
   continue;
 }

      loop->ninsns = num_loop_insns (loop);
      loop->av_ninsns = average_num_loop_insns (loop);




      decide_unroll_constant_iterations (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
 decide_unroll_runtime_iterations (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
 decide_unroll_stupid (loop, flags);
      if (loop->lpt_decision.decision == LPT_NONE)
 decide_peel_simple (loop, flags);

      loop = next;
    }
}
