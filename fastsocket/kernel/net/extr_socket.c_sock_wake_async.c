
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int fasync_list; int flags; } ;


 int SIGIO ;
 int SIGURG ;
 int SOCK_ASYNC_NOSPACE ;
 int SOCK_ASYNC_WAITDATA ;




 int __kill_fasync (int ,int ,int) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int sock_wake_async(struct socket *sock, int how, int band)
{
 if (!sock || !sock->fasync_list)
  return -1;
 switch (how) {
 case 128:
  if (test_bit(SOCK_ASYNC_WAITDATA, &sock->flags))
   break;
  goto call_kill;
 case 130:
  if (!test_and_clear_bit(SOCK_ASYNC_NOSPACE, &sock->flags))
   break;

 case 131:
call_kill:
  __kill_fasync(sock->fasync_list, SIGIO, band);
  break;
 case 129:
  __kill_fasync(sock->fasync_list, SIGURG, band);
 }
 return 0;
}
