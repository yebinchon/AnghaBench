
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pipe_inode_info {int readers; int writers; int wait; int fasync_readers; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
struct TYPE_5__ {TYPE_1__* d_inode; } ;
struct TYPE_4__ {struct pipe_inode_info* i_pipe; } ;


 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up_interruptible_sync (int *) ;

__attribute__((used)) static void wait_for_dump_helpers(struct file *file)
{
 struct pipe_inode_info *pipe;

 pipe = file->f_path.dentry->d_inode->i_pipe;

 pipe_lock(pipe);
 pipe->readers++;
 pipe->writers--;
 wake_up_interruptible_sync(&pipe->wait);
 kill_fasync(&pipe->fasync_readers, SIGIO, POLL_IN);
 pipe_unlock(pipe);





 wait_event_interruptible(pipe->wait, pipe->readers == 1);

 pipe_lock(pipe);
 pipe->readers--;
 pipe->writers++;
 pipe_unlock(pipe);
}
