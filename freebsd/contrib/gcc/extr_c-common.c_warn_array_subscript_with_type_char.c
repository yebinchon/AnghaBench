
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGER_CST ;
 int OPT_Wchar_subscripts ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ char_type_node ;
 int warning (int ,char*) ;

void
warn_array_subscript_with_type_char (tree index)
{
  if (TYPE_MAIN_VARIANT (TREE_TYPE (index)) == char_type_node
      && TREE_CODE (index) != INTEGER_CST)
    warning (OPT_Wchar_subscripts, "array subscript has type %<char%>");
}
