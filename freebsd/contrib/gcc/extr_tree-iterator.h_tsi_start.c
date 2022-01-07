
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int container; int ptr; } ;
typedef TYPE_1__ tree_stmt_iterator ;
typedef int tree ;


 int STATEMENT_LIST_HEAD (int ) ;

__attribute__((used)) static inline tree_stmt_iterator
tsi_start (tree t)
{
  tree_stmt_iterator i;

  i.ptr = STATEMENT_LIST_HEAD (t);
  i.container = t;

  return i;
}
