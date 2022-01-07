
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int NULL_TREE ;
 int bsi_end_p (int ) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;

tree
first_stmt (basic_block bb)
{
  block_stmt_iterator i = bsi_start (bb);
  return !bsi_end_p (i) ? bsi_stmt (i) : NULL_TREE;
}
