
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;


 scalar_t__ PHI_NODE ;
 scalar_t__ TREE_CODE (int ) ;
 int bsi_for_stmt (int ) ;
 int bsi_remove (int *,int) ;
 int remove_phi_node (int ,int *) ;

__attribute__((used)) static void
remove_stmt_or_phi (tree t)
{
  if (TREE_CODE (t) == PHI_NODE)
    remove_phi_node (t, ((void*)0));
  else
    {
      block_stmt_iterator bsi = bsi_for_stmt (t);
      bsi_remove (&bsi, 1);
    }
}
