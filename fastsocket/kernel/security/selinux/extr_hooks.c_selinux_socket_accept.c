
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct inode_security_struct {int initialized; int sid; int sclass; } ;
struct TYPE_2__ {struct inode_security_struct* i_security; } ;


 int SOCKET__ACCEPT ;
 TYPE_1__* SOCK_INODE (struct socket*) ;
 int current ;
 int socket_has_perm (int ,struct socket*,int ) ;

__attribute__((used)) static int selinux_socket_accept(struct socket *sock, struct socket *newsock)
{
 int err;
 struct inode_security_struct *isec;
 struct inode_security_struct *newisec;

 err = socket_has_perm(current, sock, SOCKET__ACCEPT);
 if (err)
  return err;

 newisec = SOCK_INODE(newsock)->i_security;

 isec = SOCK_INODE(sock)->i_security;
 newisec->sclass = isec->sclass;
 newisec->sid = isec->sid;
 newisec->initialized = 1;

 return 0;
}
