
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcc_init_libintl () ;
 int optind ;
 int print_usage (int) ;
 int process_args (int,char**) ;
 int process_file (char*) ;
 int release_structures () ;
 int unlock_std_streams () ;

int
main (int argc, char **argv)
{
  int argno;


  unlock_std_streams ();

  gcc_init_libintl ();

  argno = process_args (argc, argv);
  if (optind == argc)
    print_usage (1);

  for (; argno != argc; argno++)
    {
      release_structures ();

      process_file (argv[argno]);
    }

  return 0;
}
