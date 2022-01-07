
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct niter_desc {scalar_t__ const_iter; int assumptions; scalar_t__ simple_p; } ;
struct TYPE_4__ {unsigned int times; int decision; } ;
struct loop {unsigned int ninsns; TYPE_2__ lpt_decision; TYPE_1__* header; } ;
struct TYPE_3__ {scalar_t__ count; } ;
typedef unsigned int HOST_WIDEST_INT ;


 char* HOST_WIDEST_INT_PRINT_DEC ;
 int LPT_PEEL_SIMPLE ;
 int PARAM_MAX_PEELED_INSNS ;
 int PARAM_MAX_PEEL_TIMES ;
 unsigned int PARAM_VALUE (int ) ;
 int UAP_PEEL ;
 scalar_t__ dump_file ;
 unsigned int expected_loop_iterations (struct loop*) ;
 int fprintf (scalar_t__,char*,...) ;
 struct niter_desc* get_simple_loop_desc (struct loop*) ;
 int num_loop_branches (struct loop*) ;

__attribute__((used)) static void
decide_peel_simple (struct loop *loop, int flags)
{
  unsigned npeel;
  struct niter_desc *desc;

  if (!(flags & UAP_PEEL))
    {

      return;
    }

  if (dump_file)
    fprintf (dump_file, "\n;; Considering simply peeling loop\n");


  npeel = PARAM_VALUE (PARAM_MAX_PEELED_INSNS) / loop->ninsns;
  if (npeel > (unsigned) PARAM_VALUE (PARAM_MAX_PEEL_TIMES))
    npeel = PARAM_VALUE (PARAM_MAX_PEEL_TIMES);


  if (!npeel)
    {
      if (dump_file)
 fprintf (dump_file, ";; Not considering loop, is too big\n");
      return;
    }


  desc = get_simple_loop_desc (loop);


  if (desc->simple_p && !desc->assumptions && desc->const_iter)
    {
      if (dump_file)
 fprintf (dump_file, ";; Loop iterates constant times\n");
      return;
    }



  if (num_loop_branches (loop) > 1)
    {
      if (dump_file)
 fprintf (dump_file, ";; Not peeling, contains branches\n");
      return;
    }

  if (loop->header->count)
    {
      unsigned niter = expected_loop_iterations (loop);
      if (niter + 1 > npeel)
 {
   if (dump_file)
     {
       fprintf (dump_file, ";; Not peeling loop, rolls too much (");
       fprintf (dump_file, HOST_WIDEST_INT_PRINT_DEC,
         (HOST_WIDEST_INT) (niter + 1));
       fprintf (dump_file, " iterations > %d [maximum peelings])\n",
         npeel);
     }
   return;
 }
      npeel = niter + 1;
    }
  else
    {


      if (dump_file)
 fprintf (dump_file,
   ";; Not peeling loop, no evidence it will be profitable\n");
      return;
    }


  loop->lpt_decision.decision = LPT_PEEL_SIMPLE;
  loop->lpt_decision.times = npeel;

  if (dump_file)
    fprintf (dump_file, ";; Decided to simply peel the loop, %d times.\n",
      loop->lpt_decision.times);
}
