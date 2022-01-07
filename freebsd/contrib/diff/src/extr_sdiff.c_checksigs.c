
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 int cleanup (int ) ;
 int exit (int ) ;
 int getpid () ;
 int kill (int ,int) ;
 int signal_received ;
 int untrapsig (int) ;

__attribute__((used)) static void
checksigs (void)
{
  int s = signal_received;
  if (s)
    {
      cleanup (0);


      untrapsig (s);
      kill (getpid (), s);


      exit (EXIT_TROUBLE);
    }
}
