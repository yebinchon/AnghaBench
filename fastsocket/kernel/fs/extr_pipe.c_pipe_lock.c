
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;


 int I_MUTEX_PARENT ;
 int pipe_lock_nested (struct pipe_inode_info*,int ) ;

void pipe_lock(struct pipe_inode_info *pipe)
{



 pipe_lock_nested(pipe, I_MUTEX_PARENT);
}
