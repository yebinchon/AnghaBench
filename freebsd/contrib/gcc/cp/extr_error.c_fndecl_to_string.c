
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TFF_DECL_SPECIFIERS ;
 int TFF_EXCEPTION_SPECIFICATION ;
 int TFF_FUNCTION_DEFAULT_ARGUMENTS ;
 int TFF_TEMPLATE_HEADER ;
 int cxx_pp ;
 int dump_decl (int ,int) ;
 char const* pp_formatted_text (int ) ;
 int reinit_cxx_pp () ;

__attribute__((used)) static const char *
fndecl_to_string (tree fndecl, int verbose)
{
  int flags;

  flags = TFF_EXCEPTION_SPECIFICATION | TFF_DECL_SPECIFIERS
    | TFF_TEMPLATE_HEADER;
  if (verbose)
    flags |= TFF_FUNCTION_DEFAULT_ARGUMENTS;
  reinit_cxx_pp ();
  dump_decl (fndecl, flags);
  return pp_formatted_text (cxx_pp);
}
