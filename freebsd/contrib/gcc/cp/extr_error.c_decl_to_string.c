
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ ENUMERAL_TYPE ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ RECORD_TYPE ;
 int TFF_CLASS_KEY_OR_ENUM ;
 int TFF_DECL_SPECIFIERS ;
 int TFF_RETURN_TYPE ;
 int TFF_TEMPLATE_HEADER ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ UNION_TYPE ;
 int cxx_pp ;
 int dump_decl (int ,int) ;
 char const* pp_formatted_text (int ) ;
 int reinit_cxx_pp () ;

__attribute__((used)) static const char *
decl_to_string (tree decl, int verbose)
{
  int flags = 0;

  if (TREE_CODE (decl) == TYPE_DECL || TREE_CODE (decl) == RECORD_TYPE
      || TREE_CODE (decl) == UNION_TYPE || TREE_CODE (decl) == ENUMERAL_TYPE)
    flags = TFF_CLASS_KEY_OR_ENUM;
  if (verbose)
    flags |= TFF_DECL_SPECIFIERS;
  else if (TREE_CODE (decl) == FUNCTION_DECL)
    flags |= TFF_DECL_SPECIFIERS | TFF_RETURN_TYPE;
  flags |= TFF_TEMPLATE_HEADER;

  reinit_cxx_pp ();
  dump_decl (decl, flags);
  return pp_formatted_text (cxx_pp);
}
