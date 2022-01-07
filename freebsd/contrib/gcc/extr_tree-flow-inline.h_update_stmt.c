
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ PHI_NODE ;
 scalar_t__ TREE_CODE (int ) ;
 int mark_stmt_modified (int ) ;
 int update_stmt_operands (int ) ;

__attribute__((used)) static inline void
update_stmt (tree t)
{
  if (TREE_CODE (t) == PHI_NODE)
    return;
  mark_stmt_modified (t);
  update_stmt_operands (t);
}
