
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_expr {scalar_t__ original_code; int value; } ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ pedantic ;
 int pedwarn_init (char*) ;

void
maybe_warn_string_init (tree type, struct c_expr expr)
{
  if (pedantic
      && TREE_CODE (type) == ARRAY_TYPE
      && TREE_CODE (expr.value) == STRING_CST
      && expr.original_code != STRING_CST)
    pedwarn_init ("array initialized from parenthesized string constant");
}
