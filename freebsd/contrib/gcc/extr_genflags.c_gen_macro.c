
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOUPPER (char const) ;
 int fputs (char*,int ) ;
 int gcc_assert (int) ;
 int printf (char*,int,...) ;
 int putchar (char) ;
 int stdout ;

__attribute__((used)) static void
gen_macro (const char *name, int real, int expect)
{
  int i;

  gcc_assert (real <= expect);
  gcc_assert (real);


  fputs ("#define GEN_", stdout);
  for (i = 0; name[i]; i++)
    putchar (TOUPPER (name[i]));

  putchar('(');
  for (i = 0; i < expect - 1; i++)
    printf ("%c, ", i + 'A');
  printf ("%c) gen_%s (", i + 'A', name);

  for (i = 0; i < real - 1; i++)
    printf ("(%c), ", i + 'A');
  printf ("(%c))\n", i + 'A');
}
