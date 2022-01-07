
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef scalar_t__ tree ;


 int EXPR_LOCUS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ can_convert_eh (scalar_t__,scalar_t__) ;
 int tsi_end_p (int ) ;
 int tsi_next (int *) ;
 scalar_t__ tsi_stmt (int ) ;
 int warning (int ,char*,int ,scalar_t__) ;

__attribute__((used)) static void
check_handlers_1 (tree master, tree_stmt_iterator i)
{
  tree type = TREE_TYPE (master);

  for (; !tsi_end_p (i); tsi_next (&i))
    {
      tree handler = tsi_stmt (i);
      if (TREE_TYPE (handler) && can_convert_eh (type, TREE_TYPE (handler)))
 {
   warning (0, "%Hexception of type %qT will be caught",
     EXPR_LOCUS (handler), TREE_TYPE (handler));
   warning (0, "%H   by earlier handler for %qT",
     EXPR_LOCUS (master), type);
   break;
 }
    }
}
