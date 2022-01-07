
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_desc {int flags; int need_wakeup; scalar_t__ num_spliced; } ;
struct pipe_inode_info {int waiting_writers; int writers; int nrbufs; } ;


 int EAGAIN ;
 int ERESTARTSYS ;
 int SPLICE_F_NONBLOCK ;
 int current ;
 int pipe_wait (struct pipe_inode_info*) ;
 scalar_t__ signal_pending (int ) ;
 int wakeup_pipe_writers (struct pipe_inode_info*) ;

int splice_from_pipe_next(struct pipe_inode_info *pipe, struct splice_desc *sd)
{
 while (!pipe->nrbufs) {
  if (!pipe->writers)
   return 0;

  if (!pipe->waiting_writers && sd->num_spliced)
   return 0;

  if (sd->flags & SPLICE_F_NONBLOCK)
   return -EAGAIN;

  if (signal_pending(current))
   return -ERESTARTSYS;

  if (sd->need_wakeup) {
   wakeup_pipe_writers(pipe);
   sd->need_wakeup = 0;
  }

  pipe_wait(pipe);
 }

 return 1;
}
