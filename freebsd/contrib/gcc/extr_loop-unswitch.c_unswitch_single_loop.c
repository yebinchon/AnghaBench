
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int dummy; } ;
struct loop {unsigned int num_nodes; int header; scalar_t__ inner; } ;
typedef scalar_t__ rtx ;
typedef int edge ;
typedef int basic_block ;


 int BRANCH_EDGE (int ) ;
 int FALLTHRU_EDGE (int ) ;
 scalar_t__ NULL_RTX ;
 int PARAM_MAX_UNSWITCH_INSNS ;
 int PARAM_MAX_UNSWITCH_LEVEL ;
 int PARAM_VALUE (int ) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ alloc_EXPR_LIST (int ,scalar_t__,scalar_t__) ;
 int can_duplicate_loop_p (struct loop*) ;
 scalar_t__ canon_condition (scalar_t__) ;
 scalar_t__ const0_rtx ;
 scalar_t__ const_true_rtx ;
 scalar_t__ dump_file ;
 int expected_loop_iterations (struct loop*) ;
 int fprintf (scalar_t__,char*) ;
 int free (int *) ;
 int free_EXPR_LIST_node (scalar_t__) ;
 int gcc_assert (struct loop*) ;
 int * get_loop_body (struct loop*) ;
 int iv_analysis_loop_init (struct loop*) ;
 scalar_t__ may_unswitch_on (int ,struct loop*,scalar_t__*) ;
 int maybe_hot_bb_p (int ) ;
 int num_loop_insns (struct loop*) ;
 int remove_path (struct loops*,int ) ;
 scalar_t__ reversed_condition (scalar_t__) ;
 int simplify_using_condition (scalar_t__,scalar_t__*,int *) ;
 struct loop* unswitch_loop (struct loops*,struct loop*,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
unswitch_single_loop (struct loops *loops, struct loop *loop,
        rtx cond_checked, int num)
{
  basic_block *bbs;
  struct loop *nloop;
  unsigned i;
  rtx cond, rcond = NULL_RTX, conds, rconds, acond, cinsn;
  int repeat;
  edge e;


  if (num > PARAM_VALUE (PARAM_MAX_UNSWITCH_LEVEL))
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unswitching anymore, hit max level\n");
      return;
    }


  if (loop->inner)
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unswitching, not innermost loop\n");
      return;
    }


  if (!can_duplicate_loop_p (loop))
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unswitching, can't duplicate loop\n");
      return;
    }


  if (num_loop_insns (loop) > PARAM_VALUE (PARAM_MAX_UNSWITCH_INSNS))
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unswitching, loop too big\n");
      return;
    }


  if (!maybe_hot_bb_p (loop->header))
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unswitching, not hot area\n");
      return;
    }


  if (expected_loop_iterations (loop) < 1)
    {
      if (dump_file)
 fprintf (dump_file, ";; Not unswitching, loop iterations < 1\n");
      return;
    }

  do
    {
      repeat = 0;
      cinsn = NULL_RTX;


      bbs = get_loop_body (loop);
      iv_analysis_loop_init (loop);
      for (i = 0; i < loop->num_nodes; i++)
 if ((cond = may_unswitch_on (bbs[i], loop, &cinsn)))
   break;

      if (i == loop->num_nodes)
 {
   free (bbs);
   return;
 }

      if (cond != const0_rtx
   && cond != const_true_rtx)
 {
   rcond = reversed_condition (cond);
   if (rcond)
     rcond = canon_condition (rcond);


   for (acond = cond_checked; acond; acond = XEXP (acond, 1))
     simplify_using_condition (XEXP (acond, 0), &cond, ((void*)0));
 }

      if (cond == const_true_rtx)
 {

   e = FALLTHRU_EDGE (bbs[i]);
   remove_path (loops, e);
   free (bbs);
   repeat = 1;
 }
      else if (cond == const0_rtx)
 {

   e = BRANCH_EDGE (bbs[i]);
   remove_path (loops, e);
   free (bbs);
   repeat = 1;
 }
    } while (repeat);


  conds = alloc_EXPR_LIST (0, cond, cond_checked);
  if (rcond)
    rconds = alloc_EXPR_LIST (0, rcond, cond_checked);
  else
    rconds = cond_checked;

  if (dump_file)
    fprintf (dump_file, ";; Unswitching loop\n");


  nloop = unswitch_loop (loops, loop, bbs[i], cond, cinsn);
  gcc_assert (nloop);


  unswitch_single_loop (loops, nloop, rconds, num + 1);
  unswitch_single_loop (loops, loop, conds, num + 1);

  free_EXPR_LIST_node (conds);
  if (rcond)
    free_EXPR_LIST_node (rconds);

  free (bbs);
}
