
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int * file; int * sk; int * ops; scalar_t__ flags; int state; int * fasync_list; int wait; } ;
struct socket_alloc {struct inode vfs_inode; TYPE_1__ socket; } ;


 int GFP_KERNEL ;
 int SS_UNCONNECTED ;
 int init_waitqueue_head (int *) ;
 struct socket_alloc* kmem_cache_alloc (int ,int ) ;
 int sock_inode_cachep ;

__attribute__((used)) static struct inode *sock_alloc_inode(struct super_block *sb)
{
 struct socket_alloc *ei;

 ei = kmem_cache_alloc(sock_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 init_waitqueue_head(&ei->socket.wait);

 ei->socket.fasync_list = ((void*)0);
 ei->socket.state = SS_UNCONNECTED;
 ei->socket.flags = 0;
 ei->socket.ops = ((void*)0);
 ei->socket.sk = ((void*)0);
 ei->socket.file = ((void*)0);

 return &ei->vfs_inode;
}
