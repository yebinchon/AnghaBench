
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int TOUPPER (char const) ;
 char* XSTR (int ,int) ;
 int fputs (char*,int ) ;
 int putchar (int ) ;
 char* scan_comma_elt (char const**) ;
 int stdout ;
 int write_extract_subexp (char const*) ;

__attribute__((used)) static void
write_match_code_switch (rtx exp)
{
  const char *codes = XSTR (exp, 0);
  const char *path = XSTR (exp, 1);
  const char *code;

  fputs ("  switch (GET_CODE (", stdout);
  write_extract_subexp (path);
  fputs ("))\n    {\n", stdout);

  while ((code = scan_comma_elt (&codes)) != 0)
    {
      fputs ("    case ", stdout);
      while (code < codes)
 {
   putchar (TOUPPER (*code));
   code++;
 }
      fputs(":\n", stdout);
    }
}
