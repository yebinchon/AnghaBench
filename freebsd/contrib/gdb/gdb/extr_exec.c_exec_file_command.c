
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** buildargv (char*) ;
 int error (char*) ;
 int exec_file_attach (char*,int) ;
 int make_cleanup (int ,char*) ;
 int make_cleanup_freeargv (char**) ;
 int nomem (int ) ;
 int target_preopen (int) ;
 char* tilde_expand (char*) ;
 int xfree ;

__attribute__((used)) static void
exec_file_command (char *args, int from_tty)
{
  char **argv;
  char *filename;

  target_preopen (from_tty);

  if (args)
    {



      argv = buildargv (args);
      if (argv == ((void*)0))
        nomem (0);

      make_cleanup_freeargv (argv);

      for (; (*argv != ((void*)0)) && (**argv == '-'); argv++)
        {;
        }
      if (*argv == ((void*)0))
        error ("No executable file name was specified");

      filename = tilde_expand (*argv);
      make_cleanup (xfree, filename);
      exec_file_attach (filename, from_tty);
    }
  else
    exec_file_attach (((void*)0), from_tty);
}
