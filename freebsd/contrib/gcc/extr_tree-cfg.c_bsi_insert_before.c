
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum tsi_iterator_update { ____Placeholder_tsi_iterator_update } tsi_iterator_update ;
typedef enum bsi_iterator_update { ____Placeholder_bsi_iterator_update } bsi_iterator_update ;
struct TYPE_3__ {int tsi; int bb; } ;
typedef TYPE_1__ block_stmt_iterator ;


 int set_bb_for_stmt (int ,int ) ;
 int tsi_link_before (int *,int ,int) ;
 int update_modified_stmts (int ) ;

void
bsi_insert_before (block_stmt_iterator *i, tree t, enum bsi_iterator_update m)
{
  set_bb_for_stmt (t, i->bb);
  update_modified_stmts (t);
  tsi_link_before (&i->tsi, t, (enum tsi_iterator_update) m);
}
