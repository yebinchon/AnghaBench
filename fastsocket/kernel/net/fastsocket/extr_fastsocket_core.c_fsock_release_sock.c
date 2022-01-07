
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* release ) (struct socket*) ;} ;


 int DEBUG ;
 int DPRINTK (int ,char*,int ) ;
 int SOCK_INODE (struct socket*) ;
 int stub1 (struct socket*) ;

__attribute__((used)) static inline void fsock_release_sock(struct socket *sock)
{
 if (sock->ops) {
  DPRINTK(DEBUG, "Release inode socket 0x%p\n", SOCK_INODE(sock));
  sock->ops->release(sock);
  sock->ops = ((void*)0);
 }
}
