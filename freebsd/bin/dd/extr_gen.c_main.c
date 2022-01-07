
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char*,int ) ;
 int putchar (int) ;
 int stdout ;
 int strcmp (char*,char*) ;

int
main(int argc, char **argv)
{
 int i;

 if (argc > 1 && !strcmp(argv[1], "189284")) {
  fputs("ABCDEFGH", stdout);
  for (i = 0; i < 8; i++)
   putchar(0);
 } else {
  for (i = 0; i < 256; i++)
   putchar(i);
 }
 return (0);
}
