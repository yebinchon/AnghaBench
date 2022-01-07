
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ formals_style ;


 scalar_t__ C_DECL_REGISTER (int ) ;
 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_TYPE (int ) ;
 char* affix_data_type (char const*) ;
 int ansi ;
 char* concat (char const*,char const*,int *) ;
 char* data_type ;
 char const* gen_formal_list_for_func_def (int ,int ) ;
 char* gen_type (char const*,int ,scalar_t__) ;
 scalar_t__ k_and_r_names ;

__attribute__((used)) static const char *
gen_decl (tree decl, int is_func_definition, formals_style style)
{
  const char *ret_val;

  if (DECL_NAME (decl))
    ret_val = IDENTIFIER_POINTER (DECL_NAME (decl));
  else
    ret_val = "";





  if (style == k_and_r_names)
    return ret_val;
  if (TREE_THIS_VOLATILE (decl))
    ret_val = concat ("volatile ", ret_val, ((void*)0));
  if (TREE_READONLY (decl))
    ret_val = concat ("const ", ret_val, ((void*)0));

  data_type = "";
  if (TREE_CODE (decl) == FUNCTION_DECL && is_func_definition)
    {
      ret_val = concat (ret_val, gen_formal_list_for_func_def (decl, ansi),
   ((void*)0));
      ret_val = gen_type (ret_val, TREE_TYPE (TREE_TYPE (decl)), style);
    }
  else
    ret_val = gen_type (ret_val, TREE_TYPE (decl), style);

  ret_val = affix_data_type (ret_val);

  if (TREE_CODE (decl) != FUNCTION_DECL && C_DECL_REGISTER (decl))
    ret_val = concat ("register ", ret_val, ((void*)0));
  if (TREE_PUBLIC (decl))
    ret_val = concat ("extern ", ret_val, ((void*)0));
  if (TREE_CODE (decl) == FUNCTION_DECL && !TREE_PUBLIC (decl))
    ret_val = concat ("static ", ret_val, ((void*)0));

  return ret_val;
}
