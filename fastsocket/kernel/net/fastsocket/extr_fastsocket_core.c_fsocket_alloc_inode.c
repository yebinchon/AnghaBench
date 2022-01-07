
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int * file; int * sk; int * ops; scalar_t__ flags; int state; int * fasync_list; int wait; } ;
struct socket_alloc {struct inode vfs_inode; TYPE_1__ socket; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,struct inode*) ;
 int SS_UNCONNECTED ;
 struct socket_alloc* fsocket_alloc_socket_mem () ;
 int fsocket_free_socket_mem (struct socket_alloc*) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ security_inode_alloc (struct inode*) ;

struct inode *fsocket_alloc_inode(struct super_block *sb)
{
 struct socket_alloc *ei;

 ei = fsocket_alloc_socket_mem();
 if (!ei)
  return ((void*)0);

 if (security_inode_alloc(&ei->vfs_inode)) {
  fsocket_free_socket_mem(ei);
  return ((void*)0);
 }

 init_waitqueue_head(&ei->socket.wait);

 ei->socket.fasync_list = ((void*)0);
 ei->socket.state = SS_UNCONNECTED;
 ei->socket.flags = 0;
 ei->socket.ops = ((void*)0);
 ei->socket.sk = ((void*)0);
 ei->socket.file = ((void*)0);

 DPRINTK(DEBUG, "Allocate inode 0x%p\n", &ei->vfs_inode);

 return &ei->vfs_inode;
}
