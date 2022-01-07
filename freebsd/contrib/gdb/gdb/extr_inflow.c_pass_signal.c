
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PIDGET (int ) ;
 int SIGINT ;
 int inferior_ptid ;
 int kill (int ,int ) ;

__attribute__((used)) static void
pass_signal (int signo)
{

  kill (PIDGET (inferior_ptid), SIGINT);

}
