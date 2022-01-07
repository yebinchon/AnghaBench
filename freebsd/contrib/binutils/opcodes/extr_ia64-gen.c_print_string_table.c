
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* s; } ;


 int abort () ;
 int printf (char*,...) ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;
 TYPE_1__** string_table ;
 int strlen (char*) ;
 int strtablen ;

__attribute__((used)) static void
print_string_table (void)
{
  int x;
  char lbuf[80], buf[80];
  int blen = 0;

  printf ("static const char * const ia64_strings[] = {\n");
  lbuf[0] = '\0';

  for (x = 0; x < strtablen; x++)
    {
      int len;

      if (strlen (string_table[x]->s) > 75)
 abort ();

      sprintf (buf, " \"%s\",", string_table[x]->s);
      len = strlen (buf);

      if ((blen + len) > 75)
 {
   printf (" %s\n", lbuf);
   lbuf[0] = '\0';
   blen = 0;
 }
      strcat (lbuf, buf);
      blen += len;
    }

  if (blen > 0)
    printf (" %s\n", lbuf);

  printf ("};\n\n");
}
