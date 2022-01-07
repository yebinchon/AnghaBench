
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;


 int CATCH_BODY (int ) ;


 int EH_FILTER_FAILURE (int ) ;

 int LABEL_EXPR_LABEL (int ) ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;


 int record_in_finally_tree (int ,int ) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static void
collect_finally_tree (tree t, tree region)
{
 tailrecurse:
  switch (TREE_CODE (t))
    {
    case 131:
      record_in_finally_tree (LABEL_EXPR_LABEL (t), region);
      break;

    case 128:
      record_in_finally_tree (t, region);
      collect_finally_tree (TREE_OPERAND (t, 0), t);
      t = TREE_OPERAND (t, 1);
      goto tailrecurse;

    case 129:
      collect_finally_tree (TREE_OPERAND (t, 0), region);
      t = TREE_OPERAND (t, 1);
      goto tailrecurse;

    case 133:
      t = CATCH_BODY (t);
      goto tailrecurse;

    case 132:
      t = EH_FILTER_FAILURE (t);
      goto tailrecurse;

    case 130:
      {
 tree_stmt_iterator i;
 for (i = tsi_start (t); !tsi_end_p (i); tsi_next (&i))
   collect_finally_tree (tsi_stmt (i), region);
      }
      break;

    default:


      break;
    }
}
