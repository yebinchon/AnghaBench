
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
typedef int snd ;
typedef int rcv ;
typedef int mm_segment_t ;
struct TYPE_4__ {unsigned int sk_sndbuf; unsigned int sk_rcvbuf; int (* sk_write_space ) (TYPE_1__*) ;} ;


 int KERNEL_DS ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int SO_SNDBUF ;
 int get_fs () ;
 int lock_sock (TYPE_1__*) ;
 int release_sock (TYPE_1__*) ;
 int set_fs (int ) ;
 int sock_setsockopt (struct socket*,int ,int ,char*,int) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void svc_sock_setbufsize(struct socket *sock, unsigned int snd,
    unsigned int rcv)
{
 lock_sock(sock->sk);
 sock->sk->sk_sndbuf = snd * 2;
 sock->sk->sk_rcvbuf = rcv * 2;
 sock->sk->sk_write_space(sock->sk);
 release_sock(sock->sk);

}
