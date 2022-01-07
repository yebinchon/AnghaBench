
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;


 int TOUPPER (unsigned char) ;
 scalar_t__ alloca (int) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int * symbol_find_exact_noref (char const*,int) ;
 int symbols_case_sensitive ;
 char* tc_canonicalize_symbol_name (char*) ;

symbolS *
symbol_find_noref (const char *name, int noref)
{
  if (! symbols_case_sensitive)
    {
      char *copy;
      const char *orig;
      unsigned char c;

      orig = name;
      name = copy = (char *) alloca (strlen (name) + 1);

      while ((c = *orig++) != '\0')
 {
   *copy++ = TOUPPER (c);
 }
      *copy = '\0';
    }

  return symbol_find_exact_noref (name, noref);
}
