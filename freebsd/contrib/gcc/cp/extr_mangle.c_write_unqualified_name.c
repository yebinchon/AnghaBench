
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int mangled_name; } ;
typedef TYPE_1__ operator_name_info_t ;


 scalar_t__ DECL_ASSEMBLER_NAME (int const) ;
 scalar_t__ DECL_ASSIGNMENT_OPERATOR_P (int const) ;
 scalar_t__ DECL_CONSTRUCTOR_P (int const) ;
 scalar_t__ DECL_CONV_FN_P (int const) ;
 int DECL_CONV_FN_TYPE (int const) ;
 scalar_t__ DECL_DESTRUCTOR_P (int const) ;
 int * DECL_LANG_SPECIFIC (int const) ;
 scalar_t__ DECL_NAME (int const) ;
 scalar_t__ DECL_NAMESPACE_SCOPE_P (int const) ;
 size_t DECL_OVERLOADED_OPERATOR_P (int const) ;
 int MANGLE_TRACE_TREE (char*,int const) ;
 scalar_t__ NULL_TREE ;
 int TREE_PUBLIC (int const) ;
 int TREE_TYPE (int ) ;
 scalar_t__ VAR_OR_FUNCTION_DECL_P (int const) ;
 TYPE_1__* assignment_operator_name_info ;
 scalar_t__ decl_is_template_id (int const,int *) ;
 scalar_t__ decl_linkage (int const) ;
 int get_mostly_instantiated_function_type (int const) ;
 scalar_t__ lk_internal ;
 TYPE_1__* operator_name_info ;
 int restore_partially_mangled_name () ;
 int save_partially_mangled_name () ;
 int write_char (char) ;
 int write_conversion_operator_name (int ) ;
 int write_source_name (scalar_t__) ;
 int write_special_name_constructor (int const) ;
 int write_special_name_destructor (int const) ;
 int write_string (int ) ;

__attribute__((used)) static void
write_unqualified_name (const tree decl)
{
  MANGLE_TRACE_TREE ("unqualified-name", decl);

  if (DECL_LANG_SPECIFIC (decl) != ((void*)0) && DECL_CONSTRUCTOR_P (decl))
    write_special_name_constructor (decl);
  else if (DECL_LANG_SPECIFIC (decl) != ((void*)0) && DECL_DESTRUCTOR_P (decl))
    write_special_name_destructor (decl);
  else if (DECL_NAME (decl) == NULL_TREE)
    write_source_name (DECL_ASSEMBLER_NAME (decl));
  else if (DECL_CONV_FN_P (decl))
    {


      tree type;
      if (decl_is_template_id (decl, ((void*)0)))
 {
   tree fn_type;
   save_partially_mangled_name ();
   fn_type = get_mostly_instantiated_function_type (decl);
   restore_partially_mangled_name ();
   type = TREE_TYPE (fn_type);
 }
      else
 type = DECL_CONV_FN_TYPE (decl);
      write_conversion_operator_name (type);
    }
  else if (DECL_OVERLOADED_OPERATOR_P (decl))
    {
      operator_name_info_t *oni;
      if (DECL_ASSIGNMENT_OPERATOR_P (decl))
 oni = assignment_operator_name_info;
      else
 oni = operator_name_info;

      write_string (oni[DECL_OVERLOADED_OPERATOR_P (decl)].mangled_name);
    }
  else if (VAR_OR_FUNCTION_DECL_P (decl) && ! TREE_PUBLIC (decl)
    && DECL_NAMESPACE_SCOPE_P (decl)
    && decl_linkage (decl) == lk_internal)
    {
      MANGLE_TRACE_TREE ("local-source-name", decl);
      write_char ('L');
      write_source_name (DECL_NAME (decl));


    }
  else
    write_source_name (DECL_NAME (decl));
}
