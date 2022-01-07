
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;


 int CATCH_BODY (int ) ;


 int EH_FILTER_FAILURE (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int block_may_fallthru (int ) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static bool
try_catch_may_fallthru (tree stmt)
{
  tree_stmt_iterator i;



  if (block_may_fallthru (TREE_OPERAND (stmt, 0)))
    return 1;

  i = tsi_start (TREE_OPERAND (stmt, 1));
  switch (TREE_CODE (tsi_stmt (i)))
    {
    case 129:



      for (; !tsi_end_p (i); tsi_next (&i))
 {
   if (block_may_fallthru (CATCH_BODY (tsi_stmt (i))))
     return 1;
 }
      return 0;

    case 128:
      return block_may_fallthru (EH_FILTER_FAILURE (tsi_stmt (i)));

    default:




      return 0;
    }
}
