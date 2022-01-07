
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_DFL ;
 int delete_failure_queue () ;
 int delete_temp_files () ;
 int getpid () ;
 int kill (int ,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void
fatal_error (int signum)
{
  signal (signum, SIG_DFL);
  delete_failure_queue ();
  delete_temp_files ();


  kill (getpid (), signum);
}
