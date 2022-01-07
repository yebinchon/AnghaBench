
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;


 int BSI_SAME_STMT ;
 int bsi_insert_after (int *,int ,int ) ;
 int bsi_remove (int *,int) ;
 int bsi_stmt (int ) ;

void
bsi_move_after (block_stmt_iterator *from, block_stmt_iterator *to)
{
  tree stmt = bsi_stmt (*from);
  bsi_remove (from, 0);
  bsi_insert_after (to, stmt, BSI_SAME_STMT);
}
