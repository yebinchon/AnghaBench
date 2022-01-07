
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int _exit (int ) ;
 int abort () ;
 int exit_failure ;
 int getpid () ;
 int kill (int ,int) ;
 char* program_error_message ;
 char* program_name ;
 int segv_action (int) ;
 char* stack_overflow_message ;
 int strlen (char const*) ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void
die (int signo)
{
  char const *message;
  segv_action (signo);
  message = signo ? program_error_message : stack_overflow_message;
  write (STDERR_FILENO, program_name, strlen (program_name));
  write (STDERR_FILENO, ": ", 2);
  write (STDERR_FILENO, message, strlen (message));
  write (STDERR_FILENO, "\n", 1);
  if (! signo)
    _exit (exit_failure);
  kill (getpid (), signo);
  abort ();
}
