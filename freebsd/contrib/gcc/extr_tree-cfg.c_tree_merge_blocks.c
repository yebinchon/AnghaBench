
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int tree_stmt_iterator ;
typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;
typedef TYPE_1__* basic_block ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int index; scalar_t__ loop_father; int * stmt_list; } ;
typedef scalar_t__ SSA_NAME_DEF_STMT ;


 int BSI_NEW_STMT ;
 int EDGE_FALLTHRU ;
 scalar_t__ FORCED_LABEL (int ) ;
 scalar_t__ LABEL_EXPR ;
 int LABEL_EXPR_LABEL (scalar_t__) ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 scalar_t__ PHI_ARG_DEF (scalar_t__,int ) ;
 scalar_t__ PHI_RESULT (scalar_t__) ;
 int SET_PHI_RESULT (scalar_t__,int ) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TSI_NEW_STMT ;
 int bsi_end_p (int ) ;
 int bsi_insert_after (int *,scalar_t__,int ) ;
 int bsi_insert_before (int *,scalar_t__,int ) ;
 int bsi_last (TYPE_1__*) ;
 int bsi_next (int *) ;
 int bsi_remove (int *,int) ;
 int bsi_start (TYPE_1__*) ;
 scalar_t__ bsi_stmt (int ) ;
 scalar_t__ build2 (int ,int ,scalar_t__,scalar_t__) ;
 int change_bb_for_stmt (scalar_t__,TYPE_1__*) ;
 scalar_t__ current_loops ;
 scalar_t__ dump_file ;
 int fprintf (scalar_t__,char*,int,int) ;
 int gcc_assert (int) ;
 int is_gimple_reg (scalar_t__) ;
 int last_stmt (TYPE_1__*) ;
 int may_propagate_copy (scalar_t__,scalar_t__) ;
 int move_block_after (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ phi_nodes (TYPE_1__*) ;
 int remove_phi_node (scalar_t__,int *) ;
 int replace_uses_by (scalar_t__,scalar_t__) ;
 TYPE_4__* single_succ_edge (TYPE_1__*) ;
 int stmt_ends_bb_p (int ) ;
 int tsi_last (int *) ;
 int tsi_link_after (int *,int *,int ) ;
 int void_type_node ;

__attribute__((used)) static void
tree_merge_blocks (basic_block a, basic_block b)
{
  block_stmt_iterator bsi;
  tree_stmt_iterator last;
  tree phi;

  if (dump_file)
    fprintf (dump_file, "Merging blocks %d and %d\n", a->index, b->index);



  bsi = bsi_last (a);
  for (phi = phi_nodes (b); phi; phi = phi_nodes (b))
    {
      tree def = PHI_RESULT (phi), use = PHI_ARG_DEF (phi, 0);
      tree copy;
      bool may_replace_uses = may_propagate_copy (def, use);



      if (current_loops
   && is_gimple_reg (def)
   && TREE_CODE (use) == SSA_NAME
   && a->loop_father != b->loop_father)
 may_replace_uses = 0;

      if (!may_replace_uses)
 {
   gcc_assert (is_gimple_reg (def));





   copy = build2 (MODIFY_EXPR, void_type_node, def, use);
   bsi_insert_after (&bsi, copy, BSI_NEW_STMT);
   SET_PHI_RESULT (phi, NULL_TREE);
   SSA_NAME_DEF_STMT (def) = copy;
 }
      else
 replace_uses_by (def, use);

      remove_phi_node (phi, ((void*)0));
    }


  move_block_after (b, a);

  gcc_assert (single_succ_edge (a)->flags & EDGE_FALLTHRU);
  gcc_assert (!last_stmt (a) || !stmt_ends_bb_p (last_stmt (a)));


  for (bsi = bsi_start (b); !bsi_end_p (bsi);)
    {
      if (TREE_CODE (bsi_stmt (bsi)) == LABEL_EXPR)
 {
   tree label = bsi_stmt (bsi);

   bsi_remove (&bsi, 0);






   if (FORCED_LABEL (LABEL_EXPR_LABEL (label)))
     {
       block_stmt_iterator dest_bsi = bsi_start (a);
       bsi_insert_before (&dest_bsi, label, BSI_NEW_STMT);
     }
 }
      else
 {
   change_bb_for_stmt (bsi_stmt (bsi), a);
   bsi_next (&bsi);
 }
    }


  last = tsi_last (a->stmt_list);
  tsi_link_after (&last, b->stmt_list, TSI_NEW_STMT);
  b->stmt_list = ((void*)0);
}
