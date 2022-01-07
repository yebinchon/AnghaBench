
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ADDR_EXPR ;
 int OPT_Wwrite_strings ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ STRING_CST ;
 int STRIP_NOPS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int TYPE_QUAL_CONST ;
 int build_pointer_type (int ) ;
 int build_qualified_type (int ,int ) ;
 int char_type_node ;
 int same_type_p (int ,int ) ;
 int warning (int ,char*,int ) ;
 int wchar_type_node ;

int
string_conv_p (tree totype, tree exp, int warn)
{
  tree t;

  if (TREE_CODE (totype) != POINTER_TYPE)
    return 0;

  t = TREE_TYPE (totype);
  if (!same_type_p (t, char_type_node)
      && !same_type_p (t, wchar_type_node))
    return 0;

  if (TREE_CODE (exp) == STRING_CST)
    {

      if (!same_type_p (TYPE_MAIN_VARIANT (TREE_TYPE (TREE_TYPE (exp))), t))
 return 0;
    }
  else
    {

      t = build_pointer_type (build_qualified_type (t, TYPE_QUAL_CONST));
      if (!same_type_p (TREE_TYPE (exp), t))
 return 0;
      STRIP_NOPS (exp);
      if (TREE_CODE (exp) != ADDR_EXPR
   || TREE_CODE (TREE_OPERAND (exp, 0)) != STRING_CST)
 return 0;
    }


  if (warn)
    warning (OPT_Wwrite_strings,
      "deprecated conversion from string constant to %qT",
      totype);

  return 1;
}
