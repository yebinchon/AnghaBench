
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL_EXIT_CODE ;
 int SUCCESS_EXIT_CODE ;
 int decode_options (unsigned int,char const**) ;
 int do_compile () ;
 scalar_t__ errorcount ;
 int exit_after_options ;
 int general_init (char const*) ;
 int randomize () ;
 char const** save_argv ;
 scalar_t__ sorrycount ;

int
toplev_main (unsigned int argc, const char **argv)
{
  save_argv = argv;


  general_init (argv[0]);



  decode_options (argc, argv);

  randomize ();


  if (!exit_after_options)
    do_compile ();

  if (errorcount || sorrycount)
    return (FATAL_EXIT_CODE);

  return (SUCCESS_EXIT_CODE);
}
