
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOUPPER (char const) ;
 int fputs (char*,int ) ;
 int putchar (int ) ;
 char* scan_comma_elt (char const**) ;
 int stdout ;
 int write_extract_subexp (char const*) ;

__attribute__((used)) static void
write_match_code (const char *path, const char *codes)
{
  const char *code;

  while ((code = scan_comma_elt (&codes)) != 0)
    {
      fputs ("GET_CODE (", stdout);
      write_extract_subexp (path);
      fputs (") == ", stdout);
      while (code < codes)
 {
   putchar (TOUPPER (*code));
   code++;
 }

      if (*codes == ',')
 fputs (" || ", stdout);
    }
}
