
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;
typedef int * basic_block ;


 int gcc_assert (int ) ;
 int tree_redirect_edge_and_branch (int ,int *) ;

__attribute__((used)) static basic_block
tree_redirect_edge_and_branch_force (edge e, basic_block dest)
{
  e = tree_redirect_edge_and_branch (e, dest);
  gcc_assert (e);

  return ((void*)0);
}
