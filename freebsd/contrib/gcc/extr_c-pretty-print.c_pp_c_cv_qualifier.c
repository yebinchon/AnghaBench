
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_pretty_printer ;


 int pp_c_identifier (int *,char const*) ;
 int pp_c_whitespace (int *) ;
 char* pp_last_position_in_text (int *) ;

__attribute__((used)) static void
pp_c_cv_qualifier (c_pretty_printer *pp, const char *cv)
{
  const char *p = pp_last_position_in_text (pp);



  if (p != ((void*)0) && (*p == '*' || *p == '&'))
    pp_c_whitespace (pp);
  pp_c_identifier (pp, cv);
}
