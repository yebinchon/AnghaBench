
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {int need_abi_warning; } ;


 scalar_t__ ADDR_EXPR ;
 int CONST_DECL ;
 scalar_t__ DECL_P (int ) ;
 TYPE_1__ G ;
 int MANGLE_TRACE_TREE (char*,int ) ;
 scalar_t__ NOP_EXPR ;
 int PTRMEM_CST ;
 scalar_t__ REFERENCE_TYPE ;
 int TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_LIST ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 scalar_t__ abi_version_at_least (int) ;
 int gcc_assert (int) ;
 scalar_t__ tcc_constant ;
 int write_char (char) ;
 int write_encoding (int ) ;
 int write_expression (int ) ;
 int write_string (char*) ;
 int write_template_arg_literal (int ) ;
 int write_template_template_arg (int ) ;
 int write_type (int ) ;

__attribute__((used)) static void
write_template_arg (tree node)
{
  enum tree_code code = TREE_CODE (node);

  MANGLE_TRACE_TREE ("template-arg", node);



  if (code == TREE_LIST)
    {
      node = TREE_VALUE (node);

      if (DECL_P (node))
 {
   node = TREE_TYPE (node);
   code = TREE_CODE (node);
 }
    }

  if (TREE_CODE (node) == NOP_EXPR
      && TREE_CODE (TREE_TYPE (node)) == REFERENCE_TYPE)
    {



      gcc_assert (TREE_CODE (TREE_OPERAND (node, 0)) == ADDR_EXPR);
      if (abi_version_at_least (2))
 node = TREE_OPERAND (TREE_OPERAND (node, 0), 0);
      else
 G.need_abi_warning = 1;
    }

  if (TYPE_P (node))
    write_type (node);
  else if (code == TEMPLATE_DECL)

    write_template_template_arg (node);
  else if ((TREE_CODE_CLASS (code) == tcc_constant && code != PTRMEM_CST)
    || (abi_version_at_least (2) && code == CONST_DECL))
    write_template_arg_literal (node);
  else if (DECL_P (node))
    {


      if (code == CONST_DECL && !abi_version_at_least (2))
 G.need_abi_warning = 1;
      write_char ('L');


      if (!abi_version_at_least (3))
 {
   G.need_abi_warning = 1;
   write_char ('Z');
 }
      else
 write_string ("_Z");
      write_encoding (node);
      write_char ('E');
    }
  else
    {

      write_char ('X');
      write_expression (node);
      write_char ('E');
    }
}
