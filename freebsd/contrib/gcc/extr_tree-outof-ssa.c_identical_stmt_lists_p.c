
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
typedef int edge ;


 int PENDING_STMT (int ) ;
 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (int ) ;
 int gcc_assert (int) ;
 int identical_copies_p (int ,int ) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static inline bool
identical_stmt_lists_p (edge e1, edge e2)
{
  tree t1 = PENDING_STMT (e1);
  tree t2 = PENDING_STMT (e2);
  tree_stmt_iterator tsi1, tsi2;

  gcc_assert (TREE_CODE (t1) == STATEMENT_LIST);
  gcc_assert (TREE_CODE (t2) == STATEMENT_LIST);

  for (tsi1 = tsi_start (t1), tsi2 = tsi_start (t2);
       !tsi_end_p (tsi1) && !tsi_end_p (tsi2);
       tsi_next (&tsi1), tsi_next (&tsi2))
    {
      if (!identical_copies_p (tsi_stmt (tsi1), tsi_stmt (tsi2)))
        break;
    }

  if (!tsi_end_p (tsi1) || ! tsi_end_p (tsi2))
    return 0;

  return 1;
}
