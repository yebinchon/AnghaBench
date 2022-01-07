
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int FOPEN_RT ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int itbl_have_entries ;
 int printf (char*,char*) ;

int
itbl_parse (char *insntbl)
{
  extern FILE *yyin;
  extern int yyparse (void);

  yyin = fopen (insntbl, FOPEN_RT);
  if (yyin == 0)
    {
      printf ("Can't open processor instruction specification file \"%s\"\n",
       insntbl);
      return 1;
    }

  while (yyparse ())
    ;

  fclose (yyin);
  itbl_have_entries = 1;
  return 0;
}
