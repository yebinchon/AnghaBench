
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cp_declarator ;
typedef int cp_decl_specifier_seq ;


 scalar_t__ DECL_MAIN_P (scalar_t__) ;
 int FUNCDEF ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 int SF_DEFAULT ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int check_missing_prototype (scalar_t__) ;
 int gcc_assert (int ) ;
 scalar_t__ grokdeclarator (int const*,int *,int ,int,scalar_t__*) ;
 int integer_type_node ;
 int same_type_p (scalar_t__,int ) ;
 int start_preparsed_function (scalar_t__,scalar_t__,int ) ;

int
start_function (cp_decl_specifier_seq *declspecs,
  const cp_declarator *declarator,
  tree attrs)
{
  tree decl1;

  decl1 = grokdeclarator (declarator, declspecs, FUNCDEF, 1, &attrs);


  if (decl1 == NULL_TREE || TREE_CODE (decl1) != FUNCTION_DECL)
    return 0;

  if (DECL_MAIN_P (decl1))


    gcc_assert (same_type_p (TREE_TYPE (TREE_TYPE (decl1)),
        integer_type_node));


  check_missing_prototype (decl1);


  start_preparsed_function (decl1, attrs, SF_DEFAULT);

  return 1;
}
