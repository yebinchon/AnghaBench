
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int pretty_printer ;


 scalar_t__ ARRAY_TYPE ;
 scalar_t__ CODE_CONTAINS_STRUCT (scalar_t__,int ) ;
 scalar_t__ DECL_ASSEMBLER_NAME (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 scalar_t__ DECL_HARD_REGISTER (scalar_t__) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ DECL_REGISTER (scalar_t__) ;
 scalar_t__ DECL_VALUE_EXPR (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 int INDENT (int) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_PUBLIC (scalar_t__) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TS_DECL_WRTL ;
 scalar_t__ TYPE_DECL ;
 int TYPE_DOMAIN (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int dump_array_domain (int *,int ,int,int) ;
 int dump_decl_name (int *,scalar_t__,int) ;
 int dump_function_declaration (int *,scalar_t__,int,int) ;
 int dump_generic_node (int *,scalar_t__,int,int,int) ;
 int pp_character (int *,char) ;
 int pp_space (int *) ;
 int pp_string (int *,char*) ;

__attribute__((used)) static void
print_declaration (pretty_printer *buffer, tree t, int spc, int flags)
{
  INDENT (spc);

  if (TREE_CODE (t) == TYPE_DECL)
    pp_string (buffer, "typedef ");

  if (CODE_CONTAINS_STRUCT (TREE_CODE (t), TS_DECL_WRTL) && DECL_REGISTER (t))
    pp_string (buffer, "register ");

  if (TREE_PUBLIC (t) && DECL_EXTERNAL (t))
    pp_string (buffer, "extern ");
  else if (TREE_STATIC (t))
    pp_string (buffer, "static ");


  if (TREE_CODE (TREE_TYPE (t)) == ARRAY_TYPE)
    {
      tree tmp;


      tmp = TREE_TYPE (t);
      while (TREE_CODE (TREE_TYPE (tmp)) == ARRAY_TYPE)
 tmp = TREE_TYPE (tmp);
      dump_generic_node (buffer, TREE_TYPE (tmp), spc, flags, 0);


      pp_space (buffer);
      dump_generic_node (buffer, t, spc, flags, 0);


      tmp = TREE_TYPE (t);
      while (TREE_CODE (tmp) == ARRAY_TYPE)
 {
   dump_array_domain (buffer, TYPE_DOMAIN (tmp), spc, flags);
   tmp = TREE_TYPE (tmp);
 }
    }
  else if (TREE_CODE (t) == FUNCTION_DECL)
    {
      dump_generic_node (buffer, TREE_TYPE (TREE_TYPE (t)), spc, flags, 0);
      pp_space (buffer);
      dump_decl_name (buffer, t, flags);
      dump_function_declaration (buffer, TREE_TYPE (t), spc, flags);
    }
  else
    {

      dump_generic_node (buffer, TREE_TYPE (t), spc, flags, 0);


      pp_space (buffer);
      dump_generic_node (buffer, t, spc, flags, 0);
    }

  if (TREE_CODE (t) == VAR_DECL && DECL_HARD_REGISTER (t))
    {
      pp_string (buffer, " __asm__ ");
      pp_character (buffer, '(');
      dump_generic_node (buffer, DECL_ASSEMBLER_NAME (t), spc, flags, 0);
      pp_character (buffer, ')');
    }




  if (TREE_CODE (t) != FUNCTION_DECL)
    {

      if (DECL_INITIAL (t))
 {
   pp_space (buffer);
   pp_character (buffer, '=');
   pp_space (buffer);
   dump_generic_node (buffer, DECL_INITIAL (t), spc, flags, 0);
 }
    }

  if (TREE_CODE (t) == VAR_DECL && DECL_HAS_VALUE_EXPR_P (t))
    {
      pp_string (buffer, " [value-expr: ");
      dump_generic_node (buffer, DECL_VALUE_EXPR (t), spc, flags, 0);
      pp_character (buffer, ']');
    }

  pp_character (buffer, ';');
}
