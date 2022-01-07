
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;
struct TYPE_2__ {int mnt_sb; } ;


 struct socket* SOCKET_I (struct inode*) ;
 int S_IFSOCK ;
 int S_IRWXUGO ;
 int current_fsgid () ;
 int current_fsuid () ;
 int kmemcheck_annotate_bitfield (struct socket*,int ) ;
 struct inode* new_inode (int ) ;
 int percpu_add (int ,int) ;
 TYPE_1__* sock_mnt ;
 int sockets_in_use ;
 int type ;

__attribute__((used)) static struct socket *sock_alloc(void)
{
 struct inode *inode;
 struct socket *sock;

 inode = new_inode(sock_mnt->mnt_sb);
 if (!inode)
  return ((void*)0);

 sock = SOCKET_I(inode);

 kmemcheck_annotate_bitfield(sock, type);
 inode->i_mode = S_IFSOCK | S_IRWXUGO;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();

 percpu_add(sockets_in_use, 1);
 return sock;
}
