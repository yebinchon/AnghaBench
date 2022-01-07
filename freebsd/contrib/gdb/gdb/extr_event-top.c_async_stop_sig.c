
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int gdb_client_data ;


 int SIGTSTP ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int STOP_SIGNAL ;
 int dont_repeat () ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 char* get_prompt () ;
 int getpid () ;
 int handle_stop_sig ;
 int kill (int ,int ) ;
 int printf_unfiltered (char*,char*) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int ) ;
 int sigsetmask (int ) ;

__attribute__((used)) static void
async_stop_sig (gdb_client_data arg)
{
  char *prompt = get_prompt ();

  signal (SIGTSTP, SIG_DFL);
  kill (getpid (), SIGTSTP);
  signal (SIGTSTP, handle_stop_sig);



  printf_unfiltered ("%s", prompt);
  gdb_flush (gdb_stdout);


  dont_repeat ();
}
