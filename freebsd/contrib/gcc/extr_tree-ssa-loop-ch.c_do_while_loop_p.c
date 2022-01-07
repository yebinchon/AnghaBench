
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {int header; int latch; } ;


 scalar_t__ COND_EXPR ;
 scalar_t__ LABEL_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ last_and_only_stmt (int ) ;
 scalar_t__ last_stmt (int ) ;

__attribute__((used)) static bool
do_while_loop_p (struct loop *loop)
{
  tree stmt = last_stmt (loop->latch);


  if (stmt
      && TREE_CODE (stmt) != LABEL_EXPR)
    return 0;


  stmt = last_and_only_stmt (loop->header);
  if (stmt
      && TREE_CODE (stmt) == COND_EXPR)
    return 0;

  return 1;
}
