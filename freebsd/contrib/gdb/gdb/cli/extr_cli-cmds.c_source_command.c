
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef int FILE ;


 int FOPEN_RT ;
 int do_cleanups (struct cleanup*) ;
 int error (char*) ;
 int * fopen (char*,int ) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int perror_with_name (char*) ;
 int script_from_file (int *,char*) ;
 char* tilde_expand (char*) ;
 int xfree ;

void
source_command (char *args, int from_tty)
{
  FILE *stream;
  struct cleanup *old_cleanups;
  char *file = args;

  if (file == ((void*)0))
    {
      error ("source command requires pathname of file to source.");
    }

  file = tilde_expand (file);
  old_cleanups = make_cleanup (xfree, file);

  stream = fopen (file, FOPEN_RT);
  if (!stream)
    {
      if (from_tty)
 perror_with_name (file);
      else
 return;
    }

  script_from_file (stream, file);

  do_cleanups (old_cleanups);
}
