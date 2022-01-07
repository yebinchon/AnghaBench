
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int block_stmt_iterator ;
typedef int basic_block ;


 int bsi_last (int ) ;
 int bsi_stmt (int ) ;
 int * get_call_expr_in (int ) ;

__attribute__((used)) static bool
tree_block_ends_with_call_p (basic_block bb)
{
  block_stmt_iterator bsi = bsi_last (bb);
  return get_call_expr_in (bsi_stmt (bsi)) != ((void*)0);
}
