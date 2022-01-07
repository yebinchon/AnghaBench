
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 char** buildargv (char*) ;
 int do_cleanups (struct cleanup*) ;
 int handle_command (char*,int) ;
 struct cleanup* make_cleanup_freeargv (char**) ;
 int memset (char*,int ,int) ;
 int nomem (int ) ;
 int printf_filtered (char*) ;
 int * signal_print ;
 int * signal_program ;
 int * signal_stop ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int target_signal_from_name (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
xdb_handle_command (char *args, int from_tty)
{
  char **argv;
  struct cleanup *old_chain;



  argv = buildargv (args);
  if (argv == ((void*)0))
    {
      nomem (0);
    }
  old_chain = make_cleanup_freeargv (argv);
  if (argv[1] != (char *) ((void*)0))
    {
      char *argBuf;
      int bufLen;

      bufLen = strlen (argv[0]) + 20;
      argBuf = (char *) xmalloc (bufLen);
      if (argBuf)
 {
   int validFlag = 1;
   enum target_signal oursig;

   oursig = target_signal_from_name (argv[0]);
   memset (argBuf, 0, bufLen);
   if (strcmp (argv[1], "Q") == 0)
     sprintf (argBuf, "%s %s", argv[0], "noprint");
   else
     {
       if (strcmp (argv[1], "s") == 0)
  {
    if (!signal_stop[oursig])
      sprintf (argBuf, "%s %s", argv[0], "stop");
    else
      sprintf (argBuf, "%s %s", argv[0], "nostop");
  }
       else if (strcmp (argv[1], "i") == 0)
  {
    if (!signal_program[oursig])
      sprintf (argBuf, "%s %s", argv[0], "pass");
    else
      sprintf (argBuf, "%s %s", argv[0], "nopass");
  }
       else if (strcmp (argv[1], "r") == 0)
  {
    if (!signal_print[oursig])
      sprintf (argBuf, "%s %s", argv[0], "print");
    else
      sprintf (argBuf, "%s %s", argv[0], "noprint");
  }
       else
  validFlag = 0;
     }
   if (validFlag)
     handle_command (argBuf, from_tty);
   else
     printf_filtered ("Invalid signal handling flag.\n");
   if (argBuf)
     xfree (argBuf);
 }
    }
  do_cleanups (old_chain);
}
