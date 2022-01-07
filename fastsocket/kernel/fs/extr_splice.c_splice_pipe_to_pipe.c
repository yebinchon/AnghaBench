
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {int nrbufs; int curbuf; int fasync_readers; int wait; struct pipe_buffer* bufs; int writers; int readers; } ;
struct pipe_buffer {size_t len; size_t offset; int flags; TYPE_1__* ops; } ;
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
 int ipipe_prep (struct pipe_inode_info*,unsigned int) ;
 int kill_fasync (int *,int ,int ) ;
 int opipe_prep (struct pipe_inode_info*,unsigned int) ;
 int pipe_double_lock (struct pipe_inode_info*,struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int send_sig (int ,int ,int ) ;
 int smp_mb () ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;
 int wakeup_pipe_writers (struct pipe_inode_info*) ;

__attribute__((used)) static int splice_pipe_to_pipe(struct pipe_inode_info *ipipe,
          struct pipe_inode_info *opipe,
          size_t len, unsigned int flags)
{
 struct pipe_buffer *ibuf, *obuf;
 int ret = 0, nbuf;
 bool input_wakeup = 0;


retry:
 ret = ipipe_prep(ipipe, flags);
 if (ret)
  return ret;

 ret = opipe_prep(opipe, flags);
 if (ret)
  return ret;






 pipe_double_lock(ipipe, opipe);

 do {
  if (!opipe->readers) {
   send_sig(SIGPIPE, current, 0);
   if (!ret)
    ret = -EPIPE;
   break;
  }

  if (!ipipe->nrbufs && !ipipe->writers)
   break;





  if (!ipipe->nrbufs || opipe->nrbufs >= PIPE_BUFFERS) {

   if (ret)
    break;

   if (flags & SPLICE_F_NONBLOCK) {
    ret = -EAGAIN;
    break;
   }






   pipe_unlock(ipipe);
   pipe_unlock(opipe);
   goto retry;
  }

  ibuf = ipipe->bufs + ipipe->curbuf;
  nbuf = (opipe->curbuf + opipe->nrbufs) % PIPE_BUFFERS;
  obuf = opipe->bufs + nbuf;

  if (len >= ibuf->len) {



   *obuf = *ibuf;
   ibuf->ops = ((void*)0);
   opipe->nrbufs++;
   ipipe->curbuf = (ipipe->curbuf + 1) % PIPE_BUFFERS;
   ipipe->nrbufs--;
   input_wakeup = 1;
  } else {




   ibuf->ops->get(ipipe, ibuf);
   *obuf = *ibuf;





   obuf->flags &= ~PIPE_BUF_FLAG_GIFT;

   obuf->len = len;
   opipe->nrbufs++;
   ibuf->offset += obuf->len;
   ibuf->len -= obuf->len;
  }
  ret += obuf->len;
  len -= obuf->len;
 } while (len);

 pipe_unlock(ipipe);
 pipe_unlock(opipe);




 if (ret > 0) {
  smp_mb();
  if (waitqueue_active(&opipe->wait))
   wake_up_interruptible(&opipe->wait);
  kill_fasync(&opipe->fasync_readers, SIGIO, POLL_IN);
 }
 if (input_wakeup)
  wakeup_pipe_writers(ipipe);

 return ret;
}
