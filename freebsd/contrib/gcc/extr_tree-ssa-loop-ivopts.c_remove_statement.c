
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;


 int NULL_TREE ;
 scalar_t__ PHI_NODE ;
 int SET_PHI_RESULT (int ,int *) ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_for_stmt (int ) ;
 int bsi_remove (int *,int) ;
 int remove_phi_node (int ,int ) ;

__attribute__((used)) static void
remove_statement (tree stmt, bool including_defined_name)
{
  if (TREE_CODE (stmt) == PHI_NODE)
    {
      if (!including_defined_name)
 {

   SET_PHI_RESULT (stmt, ((void*)0));
 }
      remove_phi_node (stmt, NULL_TREE);
    }
  else
    {
      block_stmt_iterator bsi = bsi_for_stmt (stmt);

      bsi_remove (&bsi, 1);
    }
}
