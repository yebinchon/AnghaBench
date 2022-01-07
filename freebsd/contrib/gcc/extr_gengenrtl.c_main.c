
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL_EXIT_CODE ;
 int SUCCESS_EXIT_CODE ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int find_formats () ;
 int gencode () ;
 int genheader () ;
 int genlegend () ;
 int stdout ;

int
main (int argc, char **argv)
{
  find_formats ();
  genlegend ();

  if (argc == 2 && argv[1][0] == '-' && argv[1][1] == 'h')
    genheader ();
  else
    gencode ();

  if (ferror (stdout) || fflush (stdout) || fclose (stdout))
    return FATAL_EXIT_CODE;

  return SUCCESS_EXIT_CODE;
}
