
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_EVENT_CATCH ;
 int EX_EVENT_THROW ;
 int catch_exception_command_1 (int ,char*,int,int) ;
 int catch_exec_command_1 (char*,int,int) ;
 int catch_fork ;
 int catch_fork_command_1 (int ,char*,int,int) ;
 int catch_load_command_1 (char*,int,int) ;
 int catch_unload_command_1 (char*,int,int) ;
 int catch_vfork ;
 char* ep_find_event_name_end (char*) ;
 int error (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
catch_command_1 (char *arg, int tempflag, int from_tty)
{







  char *arg1_start = arg;
  char *arg1_end;
  int arg1_length;

  if (arg1_start == ((void*)0))
    {




      error ("Catch requires an event name.");

    }
  arg1_end = ep_find_event_name_end (arg1_start);
  if (arg1_end == ((void*)0))
    error ("catch requires an event");
  arg1_length = arg1_end + 1 - arg1_start;


  if (strncmp (arg1_start, "signal", arg1_length) == 0)
    {
      error ("Catch of signal not yet implemented");
    }
  else if (strncmp (arg1_start, "catch", arg1_length) == 0)
    {
      catch_exception_command_1 (EX_EVENT_CATCH, arg1_end + 1,
     tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "throw", arg1_length) == 0)
    {
      catch_exception_command_1 (EX_EVENT_THROW, arg1_end + 1,
     tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "thread_start", arg1_length) == 0)
    {
      error ("Catch of thread_start not yet implemented");
    }
  else if (strncmp (arg1_start, "thread_exit", arg1_length) == 0)
    {
      error ("Catch of thread_exit not yet implemented");
    }
  else if (strncmp (arg1_start, "thread_join", arg1_length) == 0)
    {
      error ("Catch of thread_join not yet implemented");
    }
  else if (strncmp (arg1_start, "start", arg1_length) == 0)
    {
      error ("Catch of start not yet implemented");
    }
  else if (strncmp (arg1_start, "exit", arg1_length) == 0)
    {
      error ("Catch of exit not yet implemented");
    }
  else if (strncmp (arg1_start, "fork", arg1_length) == 0)
    {
      catch_fork_command_1 (catch_fork, arg1_end + 1, tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "vfork", arg1_length) == 0)
    {
      catch_fork_command_1 (catch_vfork, arg1_end + 1, tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "exec", arg1_length) == 0)
    {
      catch_exec_command_1 (arg1_end + 1, tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "load", arg1_length) == 0)
    {
      catch_load_command_1 (arg1_end + 1, tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "unload", arg1_length) == 0)
    {
      catch_unload_command_1 (arg1_end + 1, tempflag, from_tty);
    }
  else if (strncmp (arg1_start, "stop", arg1_length) == 0)
    {
      error ("Catch of stop not yet implemented");
    }



  else
    {




      error ("Unknown event kind specified for catch");

    }
}
