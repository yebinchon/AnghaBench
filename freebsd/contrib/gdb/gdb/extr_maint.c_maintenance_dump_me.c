
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGABRT ;
 int SIGQUIT ;
 int SIG_DFL ;
 int getpid () ;
 int kill (int ,int ) ;
 scalar_t__ query (char*) ;
 int signal (int ,int ) ;

__attribute__((used)) static void
maintenance_dump_me (char *args, int from_tty)
{
  if (query ("Should GDB dump core? "))
    {





      signal (SIGQUIT, SIG_DFL);
      kill (getpid (), SIGQUIT);

    }
}
