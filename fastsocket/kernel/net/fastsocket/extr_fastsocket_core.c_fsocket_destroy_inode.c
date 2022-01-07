
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_alloc {int dummy; } ;
struct inode {int i_mode; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,struct inode*) ;
 scalar_t__ SOCKET_I (struct inode*) ;
 scalar_t__ S_ISSOCK (int ) ;
 int fsock_release_sock (scalar_t__) ;
 int fsocket_free_socket_mem (struct socket_alloc*) ;
 int security_inode_free (struct inode*) ;

void fsocket_destroy_inode(struct inode *inode)
{
 DPRINTK(DEBUG, "Free inode 0x%p\n", inode);

 if (S_ISSOCK(inode->i_mode)) {
  security_inode_free(inode);
 }
 fsock_release_sock(SOCKET_I(inode));
 fsocket_free_socket_mem((struct socket_alloc*)(SOCKET_I(inode)));
}
