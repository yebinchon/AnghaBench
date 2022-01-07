
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
typedef int location_t ;


 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (int ) ;
 int annotate_one_with_locus (int ,int ) ;
 int gcc_assert (int) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

void
annotate_all_with_locus (tree *stmt_p, location_t locus)
{
  tree_stmt_iterator i;

  if (!*stmt_p)
    return;

  for (i = tsi_start (*stmt_p); !tsi_end_p (i); tsi_next (&i))
    {
      tree t = tsi_stmt (i);



      gcc_assert (TREE_CODE (t) != STATEMENT_LIST
    && TREE_CODE (t) != COMPOUND_EXPR);

      annotate_one_with_locus (t, locus);
    }
}
