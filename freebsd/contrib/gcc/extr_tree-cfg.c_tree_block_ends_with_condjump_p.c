
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int basic_block ;


 scalar_t__ COND_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ last_stmt (int ) ;

__attribute__((used)) static bool
tree_block_ends_with_condjump_p (basic_block bb)
{
  tree stmt = last_stmt (bb);
  return (stmt && TREE_CODE (stmt) == COND_EXPR);
}
