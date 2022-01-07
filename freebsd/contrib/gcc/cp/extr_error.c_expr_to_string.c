
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int cxx_pp ;
 int dump_expr (int ,int ) ;
 char const* pp_formatted_text (int ) ;
 int reinit_cxx_pp () ;

__attribute__((used)) static const char *
expr_to_string (tree decl)
{
  reinit_cxx_pp ();
  dump_expr (decl, 0);
  return pp_formatted_text (cxx_pp);
}
