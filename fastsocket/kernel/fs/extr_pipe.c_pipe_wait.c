
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int wait; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;

void pipe_wait(struct pipe_inode_info *pipe)
{
 DEFINE_WAIT(wait);





 prepare_to_wait(&pipe->wait, &wait, TASK_INTERRUPTIBLE);
 pipe_unlock(pipe);
 schedule();
 finish_wait(&pipe->wait, &wait);
 pipe_lock(pipe);
}
