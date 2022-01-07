
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 scalar_t__ LABEL_EXPR ;
 scalar_t__ LABEL_EXPR_LABEL (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 scalar_t__ bsi_stmt (int ) ;

__attribute__((used)) static bool
has_label_p (basic_block bb, tree label)
{
  block_stmt_iterator bsi;

  for (bsi = bsi_start (bb); !bsi_end_p (bsi); bsi_next (&bsi))
    {
      tree stmt = bsi_stmt (bsi);

      if (TREE_CODE (stmt) != LABEL_EXPR)
 return 0;
      if (LABEL_EXPR_LABEL (stmt) == label)
 return 1;
    }
  return 0;
}
