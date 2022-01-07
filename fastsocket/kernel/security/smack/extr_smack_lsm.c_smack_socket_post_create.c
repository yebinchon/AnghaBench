
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * sk; } ;


 int PF_INET ;
 int SMACK_CIPSO_SOCKET ;
 int smack_netlabel (int *,int ) ;

__attribute__((used)) static int smack_socket_post_create(struct socket *sock, int family,
        int type, int protocol, int kern)
{
 if (family != PF_INET || sock->sk == ((void*)0))
  return 0;



 return smack_netlabel(sock->sk, SMACK_CIPSO_SOCKET);
}
