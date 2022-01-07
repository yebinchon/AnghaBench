
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int fasync_writers; int fasync_readers; int wait; scalar_t__ writers; scalar_t__ readers; } ;
struct inode {int i_mutex; struct pipe_inode_info* i_pipe; } ;


 int POLL_IN ;
 int POLL_OUT ;
 int SIGIO ;
 int free_pipe_info (struct inode*) ;
 int kill_fasync (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible_sync (int *) ;

__attribute__((used)) static int
pipe_release(struct inode *inode, int decr, int decw)
{
 struct pipe_inode_info *pipe;

 mutex_lock(&inode->i_mutex);
 pipe = inode->i_pipe;
 pipe->readers -= decr;
 pipe->writers -= decw;

 if (!pipe->readers && !pipe->writers) {
  free_pipe_info(inode);
 } else {
  wake_up_interruptible_sync(&pipe->wait);
  kill_fasync(&pipe->fasync_readers, SIGIO, POLL_IN);
  kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
 }
 mutex_unlock(&inode->i_mutex);

 return 0;
}
