
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CP_DECL_CONTEXT (int ) ;
 scalar_t__ DECL_CLASS_SCOPE_P (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ FUNCTION_DECL ;
 int TFF_DECL_SPECIFIERS ;
 int TFF_PLAIN_IDENTIFIER ;
 scalar_t__ TREE_CODE (int ) ;
 int cxx_pp ;
 char const* decl_as_string (int ,int ) ;
 int dump_decl (int ,int ) ;
 int dump_function_name (int ,int ) ;
 int dump_type (int ,int ) ;
 int pp_cxx_colon_colon (int ) ;
 char const* pp_formatted_text (int ) ;
 int reinit_cxx_pp () ;

const char *
lang_decl_name (tree decl, int v)
{
  if (v >= 2)
    return decl_as_string (decl, TFF_DECL_SPECIFIERS);

  reinit_cxx_pp ();
  if (v == 1 && DECL_CLASS_SCOPE_P (decl))
    {
      dump_type (CP_DECL_CONTEXT (decl), TFF_PLAIN_IDENTIFIER);
      pp_cxx_colon_colon (cxx_pp);
    }

  if (TREE_CODE (decl) == FUNCTION_DECL)
    dump_function_name (decl, TFF_PLAIN_IDENTIFIER);
  else
    dump_decl (DECL_NAME (decl), TFF_PLAIN_IDENTIFIER);

  return pp_formatted_text (cxx_pp);
}
