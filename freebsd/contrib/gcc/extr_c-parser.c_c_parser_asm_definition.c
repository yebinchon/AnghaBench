
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_parser ;


 int CPP_SEMICOLON ;
 scalar_t__ c_parser_simple_asm_expr (int *) ;
 int c_parser_skip_until_found (int *,int ,char*) ;
 int cgraph_add_asm_node (scalar_t__) ;

__attribute__((used)) static void
c_parser_asm_definition (c_parser *parser)
{
  tree asm_str = c_parser_simple_asm_expr (parser);
  if (asm_str)
    cgraph_add_asm_node (asm_str);
  c_parser_skip_until_found (parser, CPP_SEMICOLON, "expected %<;%>");
}
