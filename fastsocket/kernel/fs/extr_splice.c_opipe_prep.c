
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {scalar_t__ nrbufs; int waiting_writers; int readers; } ;


 int EAGAIN ;
 int EPIPE ;
 int ERESTARTSYS ;
 scalar_t__ PIPE_BUFFERS ;
 int SIGPIPE ;
 unsigned int SPLICE_F_NONBLOCK ;
 int current ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int pipe_wait (struct pipe_inode_info*) ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int opipe_prep(struct pipe_inode_info *pipe, unsigned int flags)
{
 int ret;





 if (pipe->nrbufs < PIPE_BUFFERS)
  return 0;

 ret = 0;
 pipe_lock(pipe);

 while (pipe->nrbufs >= PIPE_BUFFERS) {
  if (!pipe->readers) {
   send_sig(SIGPIPE, current, 0);
   ret = -EPIPE;
   break;
  }
  if (flags & SPLICE_F_NONBLOCK) {
   ret = -EAGAIN;
   break;
  }
  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
  pipe->waiting_writers++;
  pipe_wait(pipe);
  pipe->waiting_writers--;
 }

 pipe_unlock(pipe);
 return ret;
}
