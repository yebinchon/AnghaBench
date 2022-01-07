
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loops {int dummy; } ;
struct loop {unsigned int num_nodes; scalar_t__ inner; } ;
typedef int basic_block ;
typedef int COND_EXPR_COND ;


 int NULL_TREE ;
 int PARAM_MAX_UNSWITCH_INSNS ;
 int PARAM_MAX_UNSWITCH_LEVEL ;
 int PARAM_VALUE (int ) ;
 int TDF_DETAILS ;
 int TODO_update_ssa ;
 int boolean_false_node ;
 int boolean_true_node ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int fprintf (scalar_t__,char*) ;
 int free (int *) ;
 int free_original_copy_tables () ;
 int * get_loop_body (struct loop*) ;
 int initialize_original_copy_tables () ;
 scalar_t__ integer_nonzerop (int ) ;
 scalar_t__ integer_zerop (int ) ;
 int last_stmt (int ) ;
 int simplify_using_entry_checks (struct loop*,int ) ;
 int tree_may_unswitch_on (int ,struct loop*) ;
 unsigned int tree_num_loop_insns (struct loop*) ;
 struct loop* tree_unswitch_loop (struct loops*,struct loop*,int ,int ) ;
 int update_ssa (int ) ;
 int update_stmt (int ) ;

__attribute__((used)) static bool
tree_unswitch_single_loop (struct loops *loops, struct loop *loop, int num)
{
  basic_block *bbs;
  struct loop *nloop;
  unsigned i;
  tree cond = NULL_TREE, stmt;
  bool changed = 0;


  if (num > PARAM_VALUE (PARAM_MAX_UNSWITCH_LEVEL))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, ";; Not unswitching anymore, hit max level\n");
      return 0;
    }


  if (loop->inner)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, ";; Not unswitching, not innermost loop\n");
      return 0;
    }


  if (tree_num_loop_insns (loop)
      > (unsigned) PARAM_VALUE (PARAM_MAX_UNSWITCH_INSNS))
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 fprintf (dump_file, ";; Not unswitching, loop too big\n");
      return 0;
    }

  i = 0;
  bbs = get_loop_body (loop);

  while (1)
    {

      for (; i < loop->num_nodes; i++)
 if ((cond = tree_may_unswitch_on (bbs[i], loop)))
   break;

      if (i == loop->num_nodes)
 {
   free (bbs);
   return changed;
 }

      cond = simplify_using_entry_checks (loop, cond);
      stmt = last_stmt (bbs[i]);
      if (integer_nonzerop (cond))
 {

   COND_EXPR_COND (stmt) = boolean_true_node;
   changed = 1;
 }
      else if (integer_zerop (cond))
 {

   COND_EXPR_COND (stmt) = boolean_false_node;
   changed = 1;
 }
      else
 break;

      update_stmt (stmt);
      i++;
    }

  if (dump_file && (dump_flags & TDF_DETAILS))
    fprintf (dump_file, ";; Unswitching loop\n");

  initialize_original_copy_tables ();

  nloop = tree_unswitch_loop (loops, loop, bbs[i], cond);
  if (!nloop)
    {
      free_original_copy_tables ();
      free (bbs);
      return changed;
    }


  update_ssa (TODO_update_ssa);
  free_original_copy_tables ();


  tree_unswitch_single_loop (loops, nloop, num + 1);
  tree_unswitch_single_loop (loops, loop, num + 1);
  free (bbs);
  return 1;
}
