
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {int bb; } ;
typedef TYPE_1__ block_stmt_iterator ;


 int EXPR_LOCUS (int ) ;
 int SET_EXPR_LOCUS (int ,int ) ;
 int add_stmt_to_eh_region (int ,int) ;
 int bsi_stmt (TYPE_1__ const) ;
 int * bsi_stmt_ptr (TYPE_1__ const) ;
 int delink_stmt_imm_use (int ) ;
 int lookup_stmt_eh_region (int ) ;
 int mark_stmt_modified (int ) ;
 int remove_stmt_from_eh_region (int ) ;
 int set_bb_for_stmt (int ,int ) ;
 int update_modified_stmts (int ) ;

void
bsi_replace (const block_stmt_iterator *bsi, tree stmt, bool update_eh_info)
{
  int eh_region;
  tree orig_stmt = bsi_stmt (*bsi);

  SET_EXPR_LOCUS (stmt, EXPR_LOCUS (orig_stmt));
  set_bb_for_stmt (stmt, bsi->bb);



  if (update_eh_info)
    {
      eh_region = lookup_stmt_eh_region (orig_stmt);
      if (eh_region >= 0)
 {
   remove_stmt_from_eh_region (orig_stmt);
   add_stmt_to_eh_region (stmt, eh_region);
 }
    }

  delink_stmt_imm_use (orig_stmt);
  *bsi_stmt_ptr (*bsi) = stmt;
  mark_stmt_modified (stmt);
  update_modified_stmts (stmt);
}
