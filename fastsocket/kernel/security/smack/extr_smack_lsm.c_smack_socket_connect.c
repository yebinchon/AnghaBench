
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ sk_family; } ;


 int EINVAL ;
 scalar_t__ PF_INET ;
 int smack_netlabel_send (TYPE_1__*,struct sockaddr_in*) ;

__attribute__((used)) static int smack_socket_connect(struct socket *sock, struct sockaddr *sap,
    int addrlen)
{
 if (sock->sk == ((void*)0) || sock->sk->sk_family != PF_INET)
  return 0;
 if (addrlen < sizeof(struct sockaddr_in))
  return -EINVAL;

 return smack_netlabel_send(sock->sk, (struct sockaddr_in *)sap);
}
