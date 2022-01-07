
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {int bb; } ;
typedef TYPE_1__ block_stmt_iterator ;


 int BSI_SAME_STMT ;
 scalar_t__ EXPR_HAS_LOCATION (int ) ;
 int EXPR_LOCATION (int ) ;
 int annotate_all_with_locus (int *,int ) ;
 int bsi_insert_after (TYPE_1__*,int ,int ) ;
 int bsi_stmt (TYPE_1__) ;
 int insert_edge_copies (int ,int ) ;
 scalar_t__ stmt_ends_bb_p (int ) ;

void
sra_insert_after (block_stmt_iterator *bsi, tree list)
{
  tree stmt = bsi_stmt (*bsi);

  if (EXPR_HAS_LOCATION (stmt))
    annotate_all_with_locus (&list, EXPR_LOCATION (stmt));

  if (stmt_ends_bb_p (stmt))
    insert_edge_copies (list, bsi->bb);
  else
    bsi_insert_after (bsi, list, BSI_SAME_STMT);
}
