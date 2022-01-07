
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedep {char* pathname; struct filedep* next; } ;


 int FATAL_EXIT_CODE ;
 scalar_t__ SUCCESS_EXIT_CODE ;
 int add_filedep ;
 struct filedep* deps ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 int fputs (char*,int ) ;
 int include_callback ;
 scalar_t__ init_md_reader_args (int,char**) ;
 int ** last ;
 int printf (char*,char*) ;
 char* progname ;
 int putchar (char) ;
 int stdout ;

int
main (int argc, char **argv)
{
  struct filedep *d;

  progname = "genmddeps";
  include_callback = add_filedep;

  if (init_md_reader_args (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  *last = ((void*)0);


  fputs ("MD_INCLUDES =", stdout);
  for (d = deps; d ; d = d->next)
    printf (" \\\n\t%s", d->pathname);
  putchar ('\n');



  for (d = deps; d ; d = d->next)
    printf ("\n%s:\n", d->pathname);

  fflush (stdout);
  return (ferror (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}
