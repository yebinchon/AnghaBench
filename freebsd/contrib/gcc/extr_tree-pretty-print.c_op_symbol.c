
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_CODE (int ) ;
 char const* op_symbol_1 (int ) ;

__attribute__((used)) static const char *
op_symbol (tree op)
{
  return op_symbol_1 (TREE_CODE (op));
}
