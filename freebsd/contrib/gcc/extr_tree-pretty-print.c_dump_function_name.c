
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int pretty_printer ;


 scalar_t__ DECL_NAME (int ) ;
 int PRINT_FUNCTION_NAME (int ) ;
 int dump_decl_name (int *,int ,int ) ;

__attribute__((used)) static void
dump_function_name (pretty_printer *buffer, tree node)
{
  if (DECL_NAME (node))
    PRINT_FUNCTION_NAME (node);
  else
    dump_decl_name (buffer, node, 0);
}
