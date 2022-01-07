
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int SOCKET__READ ;
 int current ;
 int socket_has_perm (int ,struct socket*,int ) ;

__attribute__((used)) static int selinux_socket_recvmsg(struct socket *sock, struct msghdr *msg,
      int size, int flags)
{
 return socket_has_perm(current, sock, SOCKET__READ);
}
