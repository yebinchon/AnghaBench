
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct sockaddr_in {scalar_t__ sin_family; } ;
struct msghdr {scalar_t__ msg_name; } ;


 scalar_t__ AF_INET ;
 int smack_netlabel_send (int ,struct sockaddr_in*) ;

__attribute__((used)) static int smack_socket_sendmsg(struct socket *sock, struct msghdr *msg,
    int size)
{
 struct sockaddr_in *sip = (struct sockaddr_in *) msg->msg_name;




 if (sip == ((void*)0) || sip->sin_family != AF_INET)
  return 0;

 return smack_netlabel_send(sock->sk, sip);
}
