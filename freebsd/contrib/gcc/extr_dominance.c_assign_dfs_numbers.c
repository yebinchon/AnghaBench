
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct et_node {int dfs_num_out; struct et_node* right; struct et_node* son; int dfs_num_in; } ;



__attribute__((used)) static void
assign_dfs_numbers (struct et_node *node, int *num)
{
  struct et_node *son;

  node->dfs_num_in = (*num)++;

  if (node->son)
    {
      assign_dfs_numbers (node->son, num);
      for (son = node->son->right; son != node->son; son = son->right)
 assign_dfs_numbers (son, num);
    }

  node->dfs_num_out = (*num)++;
}
