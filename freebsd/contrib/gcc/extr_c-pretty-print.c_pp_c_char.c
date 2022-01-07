
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c_pretty_printer ;


 scalar_t__ ISPRINT (int) ;
 int pp_character (int *,int) ;
 int pp_scalar (int *,char*,unsigned int) ;
 int pp_string (int *,char*) ;

__attribute__((used)) static void
pp_c_char (c_pretty_printer *pp, int c)
{
  if (ISPRINT (c))
    {
      switch (c)
 {
 case '\\': pp_string (pp, "\\\\"); break;
 case '\'': pp_string (pp, "\\\'"); break;
 case '\"': pp_string (pp, "\\\""); break;
 default: pp_character (pp, c);
 }
    }
  else
    pp_scalar (pp, "\\%03o", (unsigned) c);
}
