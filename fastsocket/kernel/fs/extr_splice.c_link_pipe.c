
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int nrbufs; int curbuf; int fasync_readers; int wait; scalar_t__ waiting_writers; struct pipe_buffer* bufs; int readers; } ;
struct pipe_buffer {size_t len; int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get ) (struct pipe_inode_info*,struct pipe_buffer*) ;} ;


 int EAGAIN ;
 int EPIPE ;
 int PIPE_BUFFERS ;
 int PIPE_BUF_FLAG_GIFT ;
 int POLL_IN ;
 int SIGIO ;
 int SIGPIPE ;
 unsigned int SPLICE_F_NONBLOCK ;
 int current ;
 int kill_fasync (int *,int ,int ) ;
 int pipe_double_lock (struct pipe_inode_info*,struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int send_sig (int ,int ,int ) ;
 int smp_mb () ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int link_pipe(struct pipe_inode_info *ipipe,
       struct pipe_inode_info *opipe,
       size_t len, unsigned int flags)
{
 struct pipe_buffer *ibuf, *obuf;
 int ret = 0, i = 0, nbuf;






 pipe_double_lock(ipipe, opipe);

 do {
  if (!opipe->readers) {
   send_sig(SIGPIPE, current, 0);
   if (!ret)
    ret = -EPIPE;
   break;
  }





  if (i >= ipipe->nrbufs || opipe->nrbufs >= PIPE_BUFFERS)
   break;

  ibuf = ipipe->bufs + ((ipipe->curbuf + i) & (PIPE_BUFFERS - 1));
  nbuf = (opipe->curbuf + opipe->nrbufs) & (PIPE_BUFFERS - 1);





  ibuf->ops->get(ipipe, ibuf);

  obuf = opipe->bufs + nbuf;
  *obuf = *ibuf;





  obuf->flags &= ~PIPE_BUF_FLAG_GIFT;

  if (obuf->len > len)
   obuf->len = len;

  opipe->nrbufs++;
  ret += obuf->len;
  len -= obuf->len;
  i++;
 } while (len);





 if (!ret && ipipe->waiting_writers && (flags & SPLICE_F_NONBLOCK))
  ret = -EAGAIN;

 pipe_unlock(ipipe);
 pipe_unlock(opipe);




 if (ret > 0) {
  smp_mb();
  if (waitqueue_active(&opipe->wait))
   wake_up_interruptible(&opipe->wait);
  kill_fasync(&opipe->fasync_readers, SIGIO, POLL_IN);
 }

 return ret;
}
