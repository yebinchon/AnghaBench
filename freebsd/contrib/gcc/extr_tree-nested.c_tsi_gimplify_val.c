
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
struct nesting_info {int dummy; } ;


 int init_tmp_var (struct nesting_info*,int ,int *) ;
 scalar_t__ is_gimple_val (int ) ;

__attribute__((used)) static tree
tsi_gimplify_val (struct nesting_info *info, tree exp, tree_stmt_iterator *tsi)
{
  if (is_gimple_val (exp))
    return exp;
  else
    return init_tmp_var (info, exp, tsi);
}
