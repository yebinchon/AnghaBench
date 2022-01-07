
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int walk_data ;
struct dom_walk_data {int after_dom_children_after_stmts; int before_dom_children_after_stmts; int before_dom_children_walk_stmts; int before_dom_children_before_stmts; int interesting_blocks; int dom_direction; } ;
typedef int sbitmap ;
typedef enum rewrite_mode { ____Placeholder_rewrite_mode } rewrite_mode ;
typedef int basic_block ;


 int CDI_DOMINATORS ;
 int REWRITE_ALL ;
 int REWRITE_UPDATE ;
 int TDF_STATS ;
 int TV_TREE_SSA_REWRITE_BLOCKS ;
 int VEC_alloc (int ,int ,int) ;
 int VEC_free (int ,int ,int ) ;
 int block_defs_stack ;
 int * def_blocks ;
 int dump_dfa_stats (scalar_t__) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_tree_ssa_stats (scalar_t__) ;
 int fini_walk_dominator_tree (struct dom_walk_data*) ;
 int gcc_unreachable () ;
 int heap ;
 int htab_delete (int *) ;
 int init_walk_dominator_tree (struct dom_walk_data*) ;
 int memset (struct dom_walk_data*,int ,int) ;
 int rewrite_add_phi_arguments ;
 int rewrite_finalize_block ;
 int rewrite_initialize_block ;
 int rewrite_stmt ;
 int rewrite_update_fini_block ;
 int rewrite_update_init_block ;
 int rewrite_update_phi_arguments ;
 int rewrite_update_stmt ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int tree ;
 int walk_dominator_tree (struct dom_walk_data*,int ) ;

__attribute__((used)) static void
rewrite_blocks (basic_block entry, enum rewrite_mode what, sbitmap blocks)
{
  struct dom_walk_data walk_data;


  timevar_push (TV_TREE_SSA_REWRITE_BLOCKS);


  memset (&walk_data, 0, sizeof (walk_data));

  walk_data.dom_direction = CDI_DOMINATORS;
  walk_data.interesting_blocks = blocks;

  if (what == REWRITE_UPDATE)
    walk_data.before_dom_children_before_stmts = rewrite_update_init_block;
  else
    walk_data.before_dom_children_before_stmts = rewrite_initialize_block;

  if (what == REWRITE_ALL)
    walk_data.before_dom_children_walk_stmts = rewrite_stmt;
  else if (what == REWRITE_UPDATE)
    walk_data.before_dom_children_walk_stmts = rewrite_update_stmt;
  else
    gcc_unreachable ();

  if (what == REWRITE_ALL)
    walk_data.before_dom_children_after_stmts = rewrite_add_phi_arguments;
  else if (what == REWRITE_UPDATE)
    walk_data.before_dom_children_after_stmts = rewrite_update_phi_arguments;
  else
    gcc_unreachable ();

  if (what == REWRITE_ALL)
    walk_data.after_dom_children_after_stmts = rewrite_finalize_block;
  else if (what == REWRITE_UPDATE)
    walk_data.after_dom_children_after_stmts = rewrite_update_fini_block;
  else
    gcc_unreachable ();

  block_defs_stack = VEC_alloc (tree, heap, 10);


  init_walk_dominator_tree (&walk_data);



  walk_dominator_tree (&walk_data, entry);


  fini_walk_dominator_tree (&walk_data);


  if (dump_file && (dump_flags & TDF_STATS))
    {
      dump_dfa_stats (dump_file);
      if (def_blocks)
 dump_tree_ssa_stats (dump_file);
    }

  if (def_blocks)
    {
      htab_delete (def_blocks);
      def_blocks = ((void*)0);
    }

  VEC_free (tree, heap, block_defs_stack);

  timevar_pop (TV_TREE_SSA_REWRITE_BLOCKS);
}
