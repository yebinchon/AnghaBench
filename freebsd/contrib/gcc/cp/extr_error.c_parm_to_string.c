
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cxx_pp ;
 int pp_decimal_int (int ,int) ;
 char const* pp_formatted_text (int ) ;
 int pp_string (int ,char*) ;
 int reinit_cxx_pp () ;

__attribute__((used)) static const char *
parm_to_string (int p)
{
  reinit_cxx_pp ();
  if (p < 0)
    pp_string (cxx_pp, "'this'");
  else
    pp_decimal_int (cxx_pp, p + 1);
  return pp_formatted_text (cxx_pp);
}
