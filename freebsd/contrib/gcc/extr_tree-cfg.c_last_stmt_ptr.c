
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int bsi_end_p (int ) ;
 int bsi_last (int ) ;
 int * bsi_stmt_ptr (int ) ;

tree *
last_stmt_ptr (basic_block bb)
{
  block_stmt_iterator last = bsi_last (bb);
  return !bsi_end_p (last) ? bsi_stmt_ptr (last) : ((void*)0);
}
