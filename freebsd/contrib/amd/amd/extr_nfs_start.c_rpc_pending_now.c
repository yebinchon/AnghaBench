
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_SETSIZE ;
 int FD_ZERO (int *) ;
 int fwd_sock ;
 int select (int ,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
rpc_pending_now(void)
{
  struct timeval tvv;
  int nsel;
  fd_set readfds;

  FD_ZERO(&readfds);
  FD_SET(fwd_sock, &readfds);

  tvv.tv_sec = tvv.tv_usec = 0;
  nsel = select(FD_SETSIZE, &readfds, (fd_set *) ((void*)0), (fd_set *) ((void*)0), &tvv);
  if (nsel < 1)
    return (0);
  if (FD_ISSET(fwd_sock, &readfds))
    return (1);

  return (0);
}
