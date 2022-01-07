
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int edge ;
typedef int block_stmt_iterator ;
typedef int * basic_block ;


 int BSI_NEW_STMT ;
 int PENDING_STMT (int ) ;
 int bsi_insert_after (int *,int ,int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int gcc_assert (int) ;
 scalar_t__ tree_find_edge_insert_loc (int ,int *,int **) ;

basic_block
bsi_insert_on_edge_immediate (edge e, tree stmt)
{
  block_stmt_iterator bsi;
  basic_block new_bb = ((void*)0);

  gcc_assert (!PENDING_STMT (e));

  if (tree_find_edge_insert_loc (e, &bsi, &new_bb))
    bsi_insert_after (&bsi, stmt, BSI_NEW_STMT);
  else
    bsi_insert_before (&bsi, stmt, BSI_NEW_STMT);

  return new_bb;
}
