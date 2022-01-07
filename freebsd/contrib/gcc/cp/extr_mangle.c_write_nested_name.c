
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CONST_MEMFUNC_P (int const) ;
 int DECL_CONTEXT (int const) ;
 scalar_t__ DECL_NONSTATIC_MEMBER_FUNCTION_P (int const) ;
 scalar_t__ DECL_VOLATILE_MEMFUNC_P (int const) ;
 scalar_t__ FUNCTION_DECL ;
 int MANGLE_TRACE_TREE (char*,int const) ;
 int TI_ARGS (int ) ;
 scalar_t__ TREE_CODE (int const) ;
 scalar_t__ decl_is_template_id (int const,int *) ;
 int write_char (char) ;
 int write_prefix (int ) ;
 int write_template_args (int ) ;
 int write_template_prefix (int const) ;
 int write_unqualified_name (int const) ;

__attribute__((used)) static void
write_nested_name (const tree decl)
{
  tree template_info;

  MANGLE_TRACE_TREE ("nested-name", decl);

  write_char ('N');


  if (TREE_CODE (decl) == FUNCTION_DECL
      && DECL_NONSTATIC_MEMBER_FUNCTION_P (decl))
    {
      if (DECL_VOLATILE_MEMFUNC_P (decl))
 write_char ('V');
      if (DECL_CONST_MEMFUNC_P (decl))
 write_char ('K');
    }


  if (decl_is_template_id (decl, &template_info))
    {

      write_template_prefix (decl);
      write_template_args (TI_ARGS (template_info));
    }
  else
    {

      write_prefix (DECL_CONTEXT (decl));
      write_unqualified_name (decl);
    }
  write_char ('E');
}
