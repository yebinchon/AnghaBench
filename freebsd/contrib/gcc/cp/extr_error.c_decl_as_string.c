
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int cxx_pp ;
 int dump_decl (int ,int) ;
 char const* pp_formatted_text (int ) ;
 int reinit_cxx_pp () ;

const char *
decl_as_string (tree decl, int flags)
{
  reinit_cxx_pp ();
  dump_decl (decl, flags);
  return pp_formatted_text (cxx_pp);
}
