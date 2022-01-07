
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int SOCKET__GETOPT ;
 int current ;
 int socket_has_perm (int ,struct socket*,int ) ;

__attribute__((used)) static int selinux_socket_getsockopt(struct socket *sock, int level,
         int optname)
{
 return socket_has_perm(current, sock, SOCKET__GETOPT);
}
