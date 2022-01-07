
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;


 scalar_t__ STATEMENT_LIST ;
 scalar_t__ TREE_CODE (int ) ;
 int mark_all_v_defs_1 (int ) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static void
mark_all_v_defs (tree list)
{
  if (TREE_CODE (list) != STATEMENT_LIST)
    mark_all_v_defs_1 (list);
  else
    {
      tree_stmt_iterator i;
      for (i = tsi_start (list); !tsi_end_p (i); tsi_next (&i))
 mark_all_v_defs_1 (tsi_stmt (i));
    }
}
