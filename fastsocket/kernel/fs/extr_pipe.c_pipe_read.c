
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pipe_inode_info {int nrbufs; int curbuf; int fasync_writers; int wait; int waiting_writers; int writers; struct pipe_buffer* bufs; } ;
struct pipe_buffer {size_t len; int offset; struct pipe_buf_operations* ops; } ;
struct pipe_buf_operations {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;int (* release ) (struct pipe_inode_info*,struct pipe_buffer*) ;int (* unmap ) (struct pipe_inode_info*,struct pipe_buffer*,void*) ;void* (* map ) (struct pipe_inode_info*,struct pipe_buffer*,int) ;} ;
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int i_mutex; struct pipe_inode_info* i_pipe; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {int f_flags; TYPE_2__ f_path; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_3__ {struct inode* d_inode; } ;


 size_t EAGAIN ;
 size_t ERESTARTSYS ;
 int O_NONBLOCK ;
 int PIPE_BUFFERS ;
 int POLL_OUT ;
 int SIGIO ;
 int current ;
 int file_accessed (struct file*) ;
 int iov_fault_in_pages_write (struct iovec*,size_t) ;
 size_t iov_length (struct iovec*,unsigned long) ;
 int kill_fasync (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pipe_iov_copy_to_user (struct iovec*,void*,size_t,int) ;
 int pipe_wait (struct pipe_inode_info*) ;
 scalar_t__ signal_pending (int ) ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;
 void* stub2 (struct pipe_inode_info*,struct pipe_buffer*,int) ;
 int stub3 (struct pipe_inode_info*,struct pipe_buffer*,void*) ;
 int stub4 (struct pipe_inode_info*,struct pipe_buffer*) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible_sync (int *) ;

__attribute__((used)) static ssize_t
pipe_read(struct kiocb *iocb, const struct iovec *_iov,
    unsigned long nr_segs, loff_t pos)
{
 struct file *filp = iocb->ki_filp;
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct pipe_inode_info *pipe;
 int do_wakeup;
 ssize_t ret;
 struct iovec *iov = (struct iovec *)_iov;
 size_t total_len;

 total_len = iov_length(iov, nr_segs);

 if (unlikely(total_len == 0))
  return 0;

 do_wakeup = 0;
 ret = 0;
 mutex_lock(&inode->i_mutex);
 pipe = inode->i_pipe;
 for (;;) {
  int bufs = pipe->nrbufs;
  if (bufs) {
   int curbuf = pipe->curbuf;
   struct pipe_buffer *buf = pipe->bufs + curbuf;
   const struct pipe_buf_operations *ops = buf->ops;
   void *addr;
   size_t chars = buf->len;
   int error, atomic;

   if (chars > total_len)
    chars = total_len;

   error = ops->confirm(pipe, buf);
   if (error) {
    if (!ret)
     error = ret;
    break;
   }

   atomic = !iov_fault_in_pages_write(iov, chars);
redo:
   addr = ops->map(pipe, buf, atomic);
   error = pipe_iov_copy_to_user(iov, addr + buf->offset, chars, atomic);
   ops->unmap(pipe, buf, addr);
   if (unlikely(error)) {



    if (atomic) {
     atomic = 0;
     goto redo;
    }
    if (!ret)
     ret = error;
    break;
   }
   ret += chars;
   buf->offset += chars;
   buf->len -= chars;
   if (!buf->len) {
    buf->ops = ((void*)0);
    ops->release(pipe, buf);
    curbuf = (curbuf + 1) & (PIPE_BUFFERS-1);
    pipe->curbuf = curbuf;
    pipe->nrbufs = --bufs;
    do_wakeup = 1;
   }
   total_len -= chars;
   if (!total_len)
    break;
  }
  if (bufs)
   continue;
  if (!pipe->writers)
   break;
  if (!pipe->waiting_writers) {





   if (ret)
    break;
   if (filp->f_flags & O_NONBLOCK) {
    ret = -EAGAIN;
    break;
   }
  }
  if (signal_pending(current)) {
   if (!ret)
    ret = -ERESTARTSYS;
   break;
  }
  if (do_wakeup) {
   wake_up_interruptible_sync(&pipe->wait);
    kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
  }
  pipe_wait(pipe);
 }
 mutex_unlock(&inode->i_mutex);


 if (do_wakeup) {
  wake_up_interruptible_sync(&pipe->wait);
  kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
 }
 if (ret > 0)
  file_accessed(filp);
 return ret;
}
