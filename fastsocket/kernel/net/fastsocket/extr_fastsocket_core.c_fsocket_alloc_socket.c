
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_alloc {int dummy; } ;
struct socket {scalar_t__ type; int * file; int * sk; int * ops; scalar_t__ flags; int state; int * fasync_list; int wait; } ;
struct inode_operations {int dummy; } ;
struct inode {unsigned int i_ino; int i_mode; int i_gid; int i_uid; scalar_t__ i_state; int i_sb_list; int i_list; int i_count; int i_sb; struct file_operations const* i_fop; struct inode_operations const* i_op; } ;
struct file_operations {int dummy; } ;
struct TYPE_2__ {int mnt_sb; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,...) ;
 int ERR ;
 unsigned int FSOCKET_INODE_START ;
 int INIT_LIST_HEAD (int *) ;
 struct inode* SOCK_INODE (struct socket*) ;
 int SS_UNCONNECTED ;
 int S_IFSOCK ;
 int S_IRWXUGO ;
 int THIS_MODULE ;
 int __module_get (int ) ;
 int atomic_set (int *,int) ;
 int current_fsgid () ;
 int current_fsuid () ;
 TYPE_1__* fastsocket_mnt ;
 scalar_t__ fsocket_alloc_socket_mem () ;
 int fsocket_free_socket_mem (struct socket_alloc*) ;
 int init_waitqueue_head (int *) ;
 int kmemcheck_annotate_bitfield (struct socket*,int ) ;
 int module_put (int ) ;
 scalar_t__ security_inode_alloc (struct inode*) ;
 int type ;

__attribute__((used)) static struct socket *fsocket_alloc_socket(void)
{


 static const struct inode_operations empty_iops;
 static const struct file_operations empty_fops;
 struct socket *sock;

 static unsigned int last_ino = ( 1 << 12 );
 struct inode *inode = ((void*)0);

 sock = (struct socket *)fsocket_alloc_socket_mem();
 if (!sock) {
  DPRINTK(ERR, "Fail to allocate sock\n");
  goto err1;
 }

 __module_get(THIS_MODULE);

 if (security_inode_alloc(SOCK_INODE(sock))) {
  goto err2;
 }

 init_waitqueue_head(&sock->wait);

 sock->fasync_list = ((void*)0);
 sock->state = SS_UNCONNECTED;
 sock->flags = 0;
 sock->ops = ((void*)0);
 sock->sk = ((void*)0);
 sock->file = ((void*)0);

 sock->type = 0;

 inode = SOCK_INODE(sock);

 inode->i_op = &empty_iops;
 inode->i_fop = &empty_fops;
 inode->i_sb = fastsocket_mnt->mnt_sb;
 atomic_set(&inode->i_count, 1);

 INIT_LIST_HEAD(&inode->i_list);
 INIT_LIST_HEAD(&inode->i_sb_list);

 inode->i_ino = ++last_ino;
 inode->i_state = 0;

 kmemcheck_annotate_bitfield(sock, type);
 inode->i_mode = S_IFSOCK | S_IRWXUGO;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();



 DPRINTK(DEBUG, "Allocat inode 0x%p\n", inode);

 return sock;

err2:
 module_put(THIS_MODULE);
 fsocket_free_socket_mem((struct socket_alloc*)sock);
err1:
 return ((void*)0);
}
