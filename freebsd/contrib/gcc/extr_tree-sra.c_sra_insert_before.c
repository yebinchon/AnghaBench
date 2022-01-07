
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int block_stmt_iterator ;


 int BSI_SAME_STMT ;
 scalar_t__ EXPR_HAS_LOCATION (int ) ;
 int EXPR_LOCATION (int ) ;
 int annotate_all_with_locus (int *,int ) ;
 int bsi_insert_before (int *,int ,int ) ;
 int bsi_stmt (int ) ;

void
sra_insert_before (block_stmt_iterator *bsi, tree list)
{
  tree stmt = bsi_stmt (*bsi);

  if (EXPR_HAS_LOCATION (stmt))
    annotate_all_with_locus (&list, EXPR_LOCATION (stmt));
  bsi_insert_before (bsi, list, BSI_SAME_STMT);
}
