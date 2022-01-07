
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_pn {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct sock {int dummy; } ;
struct pn_sock {int sobject; } ;


 int AF_PHONET ;
 int memset (struct sockaddr*,int ,int) ;
 struct pn_sock* pn_sk (struct sock*) ;
 int pn_sockaddr_set_object (struct sockaddr_pn*,int ) ;

__attribute__((used)) static int pn_socket_getname(struct socket *sock, struct sockaddr *addr,
    int *sockaddr_len, int peer)
{
 struct sock *sk = sock->sk;
 struct pn_sock *pn = pn_sk(sk);

 memset(addr, 0, sizeof(struct sockaddr_pn));
 addr->sa_family = AF_PHONET;
 if (!peer)
  pn_sockaddr_set_object((struct sockaddr_pn *)addr,
     pn->sobject);

 *sockaddr_len = sizeof(struct sockaddr_pn);
 return 0;
}
