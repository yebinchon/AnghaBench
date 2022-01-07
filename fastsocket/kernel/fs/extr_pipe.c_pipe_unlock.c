
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {TYPE_1__* inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int mutex_unlock (int *) ;

void pipe_unlock(struct pipe_inode_info *pipe)
{
 if (pipe->inode)
  mutex_unlock(&pipe->inode->i_mutex);
}
