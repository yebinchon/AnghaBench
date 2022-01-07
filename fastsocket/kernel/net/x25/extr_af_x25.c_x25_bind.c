
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_x25 {scalar_t__ sx25_family; int sx25_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int source_addr; } ;


 scalar_t__ AF_X25 ;
 int EINVAL ;
 int SOCK_DEBUG (struct sock*,char*) ;
 int SOCK_ZAPPED ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;
 int x25_insert_socket (struct sock*) ;
 TYPE_1__* x25_sk (struct sock*) ;

__attribute__((used)) static int x25_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 struct sockaddr_x25 *addr = (struct sockaddr_x25 *)uaddr;

 if (!sock_flag(sk, SOCK_ZAPPED) ||
     addr_len != sizeof(struct sockaddr_x25) ||
     addr->sx25_family != AF_X25)
  return -EINVAL;

 x25_sk(sk)->source_addr = addr->sx25_addr;
 x25_insert_socket(sk);
 sock_reset_flag(sk, SOCK_ZAPPED);
 SOCK_DEBUG(sk, "x25_bind: socket is bound\n");

 return 0;
}
