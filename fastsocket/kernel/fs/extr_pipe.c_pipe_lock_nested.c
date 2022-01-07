
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {TYPE_1__* inode; } ;
struct TYPE_2__ {int i_mutex; } ;


 int mutex_lock_nested (int *,int) ;

__attribute__((used)) static void pipe_lock_nested(struct pipe_inode_info *pipe, int subclass)
{
 if (pipe->inode)
  mutex_lock_nested(&pipe->inode->i_mutex, subclass);
}
