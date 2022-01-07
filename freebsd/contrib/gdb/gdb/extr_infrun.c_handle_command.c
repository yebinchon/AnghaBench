
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;


 int SET_SIGS (int,unsigned char*,int ) ;



 scalar_t__ TARGET_SIGNAL_LAST ;


 int UNSET_SIGS (int,unsigned char*,int ) ;
 scalar_t__ alloca (int) ;
 int atoi (char*) ;
 char** buildargv (char*) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,char*) ;
 int error_no_arg (char*) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int inferior_ptid ;
 scalar_t__ isdigit (char) ;
 struct cleanup* make_cleanup_freeargv (char**) ;
 int memset (unsigned char*,int ,int) ;
 int nomem (int ) ;
 int printf_unfiltered (char*) ;
 int query (char*,int ) ;
 int sig_print_header () ;
 int sig_print_info (int) ;
 int signal_print ;
 int signal_program ;
 int signal_stop ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int target_notice_signals (int ) ;
 scalar_t__ target_signal_from_command (int ) ;
 int target_signal_from_name (char*) ;
 int target_signal_to_name (int) ;

__attribute__((used)) static void
handle_command (char *args, int from_tty)
{
  char **argv;
  int digits, wordlen;
  int sigfirst, signum, siglast;
  enum target_signal oursig;
  int allsigs;
  int nsigs;
  unsigned char *sigs;
  struct cleanup *old_chain;

  if (args == ((void*)0))
    {
      error_no_arg ("signal to handle");
    }



  nsigs = (int) TARGET_SIGNAL_LAST;
  sigs = (unsigned char *) alloca (nsigs);
  memset (sigs, 0, nsigs);



  argv = buildargv (args);
  if (argv == ((void*)0))
    {
      nomem (0);
    }
  old_chain = make_cleanup_freeargv (argv);






  while (*argv != ((void*)0))
    {
      wordlen = strlen (*argv);
      for (digits = 0; isdigit ((*argv)[digits]); digits++)
 {;
 }
      allsigs = 0;
      sigfirst = siglast = -1;

      if (wordlen >= 1 && !strncmp (*argv, "all", wordlen))
 {


   allsigs = 1;
   sigfirst = 0;
   siglast = nsigs - 1;
 }
      else if (wordlen >= 1 && !strncmp (*argv, "stop", wordlen))
 {
   SET_SIGS (nsigs, sigs, signal_stop);
   SET_SIGS (nsigs, sigs, signal_print);
 }
      else if (wordlen >= 1 && !strncmp (*argv, "ignore", wordlen))
 {
   UNSET_SIGS (nsigs, sigs, signal_program);
 }
      else if (wordlen >= 2 && !strncmp (*argv, "print", wordlen))
 {
   SET_SIGS (nsigs, sigs, signal_print);
 }
      else if (wordlen >= 2 && !strncmp (*argv, "pass", wordlen))
 {
   SET_SIGS (nsigs, sigs, signal_program);
 }
      else if (wordlen >= 3 && !strncmp (*argv, "nostop", wordlen))
 {
   UNSET_SIGS (nsigs, sigs, signal_stop);
 }
      else if (wordlen >= 3 && !strncmp (*argv, "noignore", wordlen))
 {
   SET_SIGS (nsigs, sigs, signal_program);
 }
      else if (wordlen >= 4 && !strncmp (*argv, "noprint", wordlen))
 {
   UNSET_SIGS (nsigs, sigs, signal_print);
   UNSET_SIGS (nsigs, sigs, signal_stop);
 }
      else if (wordlen >= 4 && !strncmp (*argv, "nopass", wordlen))
 {
   UNSET_SIGS (nsigs, sigs, signal_program);
 }
      else if (digits > 0)
 {






   sigfirst = siglast = (int)
     target_signal_from_command (atoi (*argv));
   if ((*argv)[digits] == '-')
     {
       siglast = (int)
  target_signal_from_command (atoi ((*argv) + digits + 1));
     }
   if (sigfirst > siglast)
     {

       signum = sigfirst;
       sigfirst = siglast;
       siglast = signum;
     }
 }
      else
 {
   oursig = target_signal_from_name (*argv);
   if (oursig != 128)
     {
       sigfirst = siglast = (int) oursig;
     }
   else
     {

       error ("Unrecognized or ambiguous flag word: \"%s\".", *argv);
     }
 }




      for (signum = sigfirst; signum >= 0 && signum <= siglast; signum++)
 {
   switch ((enum target_signal) signum)
     {
     case 129:
     case 130:
       if (!allsigs && !sigs[signum])
  {
    if (query ("%s is used by the debugger.\nAre you sure you want to change it? ", target_signal_to_name ((enum target_signal) signum)))

      {
        sigs[signum] = 1;
      }
    else
      {
        printf_unfiltered ("Not confirmed, unchanged.\n");
        gdb_flush (gdb_stdout);
      }
  }
       break;
     case 132:
     case 131:
     case 128:

       break;
     default:
       sigs[signum] = 1;
       break;
     }
 }

      argv++;
    }

  target_notice_signals (inferior_ptid);

  if (from_tty)
    {

      sig_print_header ();
      for (signum = 0; signum < nsigs; signum++)
 {
   if (sigs[signum])
     {
       sig_print_info (signum);
     }
 }
    }

  do_cleanups (old_chain);
}
