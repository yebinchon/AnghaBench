
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int r_counter; int w_counter; struct inode* inode; int wait; } ;
struct inode {int dummy; } ;


 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct pipe_inode_info* kzalloc (int,int ) ;

struct pipe_inode_info * alloc_pipe_info(struct inode *inode)
{
 struct pipe_inode_info *pipe;

 pipe = kzalloc(sizeof(struct pipe_inode_info), GFP_KERNEL);
 if (pipe) {
  init_waitqueue_head(&pipe->wait);
  pipe->r_counter = pipe->w_counter = 1;
  pipe->inode = inode;
 }

 return pipe;
}
