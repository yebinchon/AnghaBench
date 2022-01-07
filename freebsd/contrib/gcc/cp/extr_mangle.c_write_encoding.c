
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_CONSTRUCTOR_P (int const) ;
 int DECL_CONV_FN_P (int const) ;
 int DECL_DESTRUCTOR_P (int const) ;
 scalar_t__ DECL_EXTERN_C_FUNCTION_P (int const) ;
 scalar_t__ DECL_LANG_SPECIFIC (int const) ;
 int DECL_NAME (int const) ;
 scalar_t__ DECL_OVERLOADED_OPERATOR_P (int const) ;
 scalar_t__ FUNCTION_DECL ;
 int MANGLE_TRACE_TREE (char*,int const) ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int const) ;
 int TREE_TYPE (int const) ;
 scalar_t__ decl_is_template_id (int const,int *) ;
 int get_mostly_instantiated_function_type (int const) ;
 int restore_partially_mangled_name () ;
 int save_partially_mangled_name () ;
 int write_bare_function_type (int ,int,int ) ;
 int write_name (int const,int ) ;
 int write_source_name (int ) ;

__attribute__((used)) static void
write_encoding (const tree decl)
{
  MANGLE_TRACE_TREE ("encoding", decl);

  if (DECL_LANG_SPECIFIC (decl) && DECL_EXTERN_C_FUNCTION_P (decl))
    {


      if (DECL_OVERLOADED_OPERATOR_P (decl))
 write_name (decl, 0);
      else
 write_source_name (DECL_NAME (decl));
      return;
    }

  write_name (decl, 0);
  if (TREE_CODE (decl) == FUNCTION_DECL)
    {
      tree fn_type;
      tree d;

      if (decl_is_template_id (decl, ((void*)0)))
 {
   save_partially_mangled_name ();
   fn_type = get_mostly_instantiated_function_type (decl);
   restore_partially_mangled_name ();




   d = NULL_TREE;
 }
      else
 {
   fn_type = TREE_TYPE (decl);
   d = decl;
 }

      write_bare_function_type (fn_type,
    (!DECL_CONSTRUCTOR_P (decl)
     && !DECL_DESTRUCTOR_P (decl)
     && !DECL_CONV_FN_P (decl)
     && decl_is_template_id (decl, ((void*)0))),
    d);
    }
}
