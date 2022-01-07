
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct niter_desc {scalar_t__ const_iter; scalar_t__ assumptions; int simple_p; } ;
struct TYPE_4__ {unsigned int times; int decision; } ;
struct loop {unsigned int ninsns; unsigned int av_ninsns; TYPE_2__ lpt_decision; TYPE_1__* header; } ;
struct TYPE_3__ {scalar_t__ count; } ;


 int LPT_UNROLL_RUNTIME ;
 int PARAM_MAX_AVERAGE_UNROLLED_INSNS ;
 int PARAM_MAX_UNROLLED_INSNS ;
 int PARAM_MAX_UNROLL_TIMES ;
 unsigned int PARAM_VALUE (int ) ;
 int UAP_UNROLL ;
 scalar_t__ dump_file ;
 int expected_loop_iterations (struct loop*) ;
 int fprintf (scalar_t__,char*,...) ;
 struct niter_desc* get_simple_loop_desc (struct loop*) ;

__attribute__((used)) static void
decide_unroll_runtime_iterations (struct loop *loop, int flags)
{
  unsigned nunroll, nunroll_by_av, i;
  struct niter_desc *desc;

  if (!(flags & UAP_UNROLL))
    {

      return;
    }

  if (dump_file)
    fprintf (dump_file,
      "\n;; Considering unrolling loop with runtime "
      "computable number of iterations\n");



  nunroll = PARAM_VALUE (PARAM_MAX_UNROLLED_INSNS) / loop->ninsns;
  nunroll_by_av = PARAM_VALUE (PARAM_MAX_AVERAGE_UNROLLED_INSNS) / loop->av_ninsns;
  if (nunroll > nunroll_by_av)
    nunroll = nunroll_by_av;
  if (nunroll > (unsigned) PARAM_VALUE (PARAM_MAX_UNROLL_TIMES))
    nunroll = PARAM_VALUE (PARAM_MAX_UNROLL_TIMES);


  if (nunroll <= 1)
    {
      if (dump_file)
 fprintf (dump_file, ";; Not considering loop, is too big\n");
      return;
    }


  desc = get_simple_loop_desc (loop);


  if (!desc->simple_p || desc->assumptions)
    {
      if (dump_file)
 fprintf (dump_file,
   ";; Unable to prove that the number of iterations "
   "can be counted in runtime\n");
      return;
    }

  if (desc->const_iter)
    {
      if (dump_file)
 fprintf (dump_file, ";; Loop iterates constant times\n");
      return;
    }


  if (loop->header->count && expected_loop_iterations (loop) < 2 * nunroll)
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unrolling loop, doesn't roll\n");
      return;
    }



  for (i = 1; 2 * i <= nunroll; i *= 2)
    continue;

  loop->lpt_decision.decision = LPT_UNROLL_RUNTIME;
  loop->lpt_decision.times = i - 1;

  if (dump_file)
    fprintf (dump_file,
      ";; Decided to unroll the runtime computable "
      "times rolling loop, %d times.\n",
      loop->lpt_decision.times);
}
