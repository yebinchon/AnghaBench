
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPOUND_EXPR ;
 char* EXPR_FILENAME (scalar_t__) ;
 scalar_t__ EXPR_HAS_LOCATION (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;

__attribute__((used)) static inline const char *
get_filename (tree expr)
{
  const char *filename;
  if (expr == NULL_TREE)
    return "???";

  if (TREE_CODE (expr) == COMPOUND_EXPR)
    expr = TREE_OPERAND (expr, 0);

  if (EXPR_HAS_LOCATION (expr) && (filename = EXPR_FILENAME (expr)))
    return filename;
  else
    return "???";
}
