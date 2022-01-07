
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int PIDGET (int ) ;
 int SIGINT ;
 int SIGIO ;
 int inferior_ptid ;
 int kill (int ,int ) ;
 int select (scalar_t__,int *,int *,int *,int *) ;
 int signal (int ,void (*) (int)) ;
 scalar_t__ stub1 () ;
 scalar_t__ target_activity_fd ;
 scalar_t__ target_activity_function () ;

__attribute__((used)) static void
handle_sigio (int signo)
{
  int numfds;
  fd_set readfds;

  signal (SIGIO, handle_sigio);

  FD_ZERO (&readfds);
  FD_SET (target_activity_fd, &readfds);
  numfds = select (target_activity_fd + 1, &readfds, ((void*)0), ((void*)0), ((void*)0));
  if (numfds >= 0 && FD_ISSET (target_activity_fd, &readfds))
    {

      if ((*target_activity_function) ())
 kill (PIDGET (inferior_ptid), SIGINT);

    }
}
