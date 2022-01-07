
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int C99 ;
 int CXX ;
 void** combining_value ;
 unsigned long** decomp ;
 int digit ;
 int fail (char*) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fgets (char*,int,int *) ;
 int* flags ;
 int * fopen (char*,char*) ;
 int isdigit (char) ;
 scalar_t__ isspace (char) ;
 int isxdigit (char) ;
 void* strtoul (char*,char**,int) ;

__attribute__((used)) static void
read_table (char *fname)
{
  FILE * f = fopen (fname, "r");

  if (!f)
    fail ("opening UnicodeData.txt");
  for (;;)
    {
      char line[256];
      unsigned long codepoint, this_decomp[4];
      char *l;
      int i;
      int decomp_useful;

      if (!fgets (line, sizeof (line), f))
 break;
      codepoint = strtoul (line, &l, 16);
      if (l == line || *l != ';')
 fail ("parsing UnicodeData.txt, reading code point");
      if (codepoint > 0xffff || ! (flags[codepoint] & (C99 | CXX)))
 continue;

      do {
 l++;
      } while (*l != ';');


      if (*++l == 'N')
 flags[codepoint] |= digit;

      do {
 l++;
      } while (*l != ';');


      if (! isdigit (*++l))
 fail ("parsing UnicodeData.txt, combining class not number");
      combining_value[codepoint] = strtoul (l, &l, 10);
      if (*l++ != ';')
 fail ("parsing UnicodeData.txt, junk after combining class");


      do {
 l++;
      } while (*l != ';');


      decomp_useful = flags[codepoint];
      if (*++l == '<')
 continue;
      for (i = 0; i < 4; i++)
 {
   if (*l == ';')
     break;
   if (!isxdigit (*l))
     fail ("parsing UnicodeData.txt, decomposition format");
   this_decomp[i] = strtoul (l, &l, 16);
   decomp_useful &= flags[this_decomp[i]];
   while (isspace (*l))
     l++;
 }
      if (i > 2)
 fail ("parsing UnicodeData.txt, decomposition too long");
      if (decomp_useful)
 while (--i >= 0)
   decomp[codepoint][i] = this_decomp[i];
    }
  if (ferror (f))
    fail ("reading UnicodeData.txt");
  fclose (f);
}
