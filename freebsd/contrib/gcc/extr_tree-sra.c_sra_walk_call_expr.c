
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct sra_walk_fns {int dummy; } ;
typedef int block_stmt_iterator ;


 int TREE_OPERAND (int ,int) ;
 int sra_walk_tree_list (int ,int *,int,struct sra_walk_fns const*) ;

__attribute__((used)) static void
sra_walk_call_expr (tree expr, block_stmt_iterator *bsi,
      const struct sra_walk_fns *fns)
{
  sra_walk_tree_list (TREE_OPERAND (expr, 1), bsi, 0, fns);
}
