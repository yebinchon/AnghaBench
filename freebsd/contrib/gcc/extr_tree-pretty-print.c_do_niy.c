
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int pretty_printer ;


 scalar_t__ EXPR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_CODE_LENGTH (scalar_t__) ;
 int TREE_OPERAND (int ,int) ;
 int dump_generic_node (int *,int ,int,int ,int) ;
 int newline_and_indent (int *,int) ;
 int pp_string (int *,char*) ;
 char** tree_code_name ;

__attribute__((used)) static void
do_niy (pretty_printer *buffer, tree node)
{
  int i, len;

  pp_string (buffer, "<<< Unknown tree: ");
  pp_string (buffer, tree_code_name[(int) TREE_CODE (node)]);

  if (EXPR_P (node))
    {
      len = TREE_CODE_LENGTH (TREE_CODE (node));
      for (i = 0; i < len; ++i)
 {
   newline_and_indent (buffer, 2);
   dump_generic_node (buffer, TREE_OPERAND (node, i), 2, 0, 0);
 }
    }

  pp_string (buffer, " >>>\n");
}
