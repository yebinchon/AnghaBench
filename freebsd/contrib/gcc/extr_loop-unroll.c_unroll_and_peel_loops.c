
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loops {struct loop* tree_root; } ;
struct TYPE_2__ {int decision; } ;
struct loop {TYPE_1__ lpt_decision; struct loop* outer; struct loop* inner; struct loop* next; } ;


 int CDI_DOMINATORS ;






 int decide_unrolling_and_peeling (struct loops*,int) ;
 int gcc_unreachable () ;
 int iv_analysis_done () ;
 int peel_loop_simple (struct loops*,struct loop*) ;
 int peel_loops_completely (struct loops*,int) ;
 int unroll_loop_constant_iterations (struct loops*,struct loop*) ;
 int unroll_loop_runtime_iterations (struct loops*,struct loop*) ;
 int unroll_loop_stupid (struct loops*,struct loop*) ;
 int verify_dominators (int ) ;
 int verify_loop_structure (struct loops*) ;

void
unroll_and_peel_loops (struct loops *loops, int flags)
{
  struct loop *loop, *next;
  bool check;



  peel_loops_completely (loops, flags);


  decide_unrolling_and_peeling (loops, flags);

  loop = loops->tree_root;
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

      check = 1;

      switch (loop->lpt_decision.decision)
 {
 case 132:

   gcc_unreachable ();
 case 131:
   peel_loop_simple (loops, loop);
   break;
 case 130:
   unroll_loop_constant_iterations (loops, loop);
   break;
 case 129:
   unroll_loop_runtime_iterations (loops, loop);
   break;
 case 128:
   unroll_loop_stupid (loops, loop);
   break;
 case 133:
   check = 0;
   break;
 default:
   gcc_unreachable ();
 }
      if (check)
 {




 }
      loop = next;
    }

  iv_analysis_done ();
}
