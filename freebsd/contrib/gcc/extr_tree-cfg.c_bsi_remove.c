
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int tsi; } ;
typedef TYPE_1__ block_stmt_iterator ;


 int bsi_stmt (TYPE_1__) ;
 int delink_stmt_imm_use (int ) ;
 int mark_stmt_modified (int ) ;
 int remove_stmt_from_eh_region (int ) ;
 int set_bb_for_stmt (int ,int *) ;
 int tsi_delink (int *) ;

void
bsi_remove (block_stmt_iterator *i, bool remove_eh_info)
{
  tree t = bsi_stmt (*i);
  set_bb_for_stmt (t, ((void*)0));
  delink_stmt_imm_use (t);
  tsi_delink (&i->tsi);
  mark_stmt_modified (t);
  if (remove_eh_info)
    remove_stmt_from_eh_region (t);
}
