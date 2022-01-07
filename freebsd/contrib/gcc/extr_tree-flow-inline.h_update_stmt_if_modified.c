
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ stmt_modified_p (int ) ;
 int update_stmt_operands (int ) ;

__attribute__((used)) static inline void
update_stmt_if_modified (tree t)
{
  if (stmt_modified_p (t))
    update_stmt_operands (t);
}
