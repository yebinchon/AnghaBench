
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kiocb {int ki_opcode; void* ki_retry; int ki_left; int ki_buf; struct file* ki_filp; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
typedef int ssize_t ;
struct TYPE_2__ {int aio_fsync; int aio_write; int aio_read; } ;


 int EBADF ;
 int EFAULT ;
 int EINVAL ;
 int FMODE_READ ;
 int FMODE_WRITE ;






 int MAY_READ ;
 int MAY_WRITE ;
 int READ ;
 int VERIFY_READ ;
 int VERIFY_WRITE ;
 int WRITE ;
 int access_ok (int ,int ,int ) ;
 void* aio_fdsync ;
 void* aio_fsync ;
 void* aio_rw_vect_retry ;
 int aio_setup_single_vector (struct kiocb*) ;
 int aio_setup_vectored_rw (int ,struct kiocb*,int) ;
 int dprintk (char*) ;
 int security_file_permission (struct file*,int ) ;
 int unlikely (int) ;

__attribute__((used)) static ssize_t aio_setup_iocb(struct kiocb *kiocb, bool compat)
{
 struct file *file = kiocb->ki_filp;
 ssize_t ret = 0;

 switch (kiocb->ki_opcode) {
 case 131:
  ret = -EBADF;
  if (unlikely(!(file->f_mode & FMODE_READ)))
   break;
  ret = -EFAULT;
  if (unlikely(!access_ok(VERIFY_WRITE, kiocb->ki_buf,
   kiocb->ki_left)))
   break;
  ret = security_file_permission(file, MAY_READ);
  if (unlikely(ret))
   break;
  ret = aio_setup_single_vector(kiocb);
  if (ret)
   break;
  ret = -EINVAL;
  if (file->f_op->aio_read)
   kiocb->ki_retry = aio_rw_vect_retry;
  break;
 case 129:
  ret = -EBADF;
  if (unlikely(!(file->f_mode & FMODE_WRITE)))
   break;
  ret = -EFAULT;
  if (unlikely(!access_ok(VERIFY_READ, kiocb->ki_buf,
   kiocb->ki_left)))
   break;
  ret = security_file_permission(file, MAY_WRITE);
  if (unlikely(ret))
   break;
  ret = aio_setup_single_vector(kiocb);
  if (ret)
   break;
  ret = -EINVAL;
  if (file->f_op->aio_write)
   kiocb->ki_retry = aio_rw_vect_retry;
  break;
 case 130:
  ret = -EBADF;
  if (unlikely(!(file->f_mode & FMODE_READ)))
   break;
  ret = security_file_permission(file, MAY_READ);
  if (unlikely(ret))
   break;
  ret = aio_setup_vectored_rw(READ, kiocb, compat);
  if (ret)
   break;
  ret = -EINVAL;
  if (file->f_op->aio_read)
   kiocb->ki_retry = aio_rw_vect_retry;
  break;
 case 128:
  ret = -EBADF;
  if (unlikely(!(file->f_mode & FMODE_WRITE)))
   break;
  ret = security_file_permission(file, MAY_WRITE);
  if (unlikely(ret))
   break;
  ret = aio_setup_vectored_rw(WRITE, kiocb, compat);
  if (ret)
   break;
  ret = -EINVAL;
  if (file->f_op->aio_write)
   kiocb->ki_retry = aio_rw_vect_retry;
  break;
 case 133:
  ret = -EINVAL;
  if (file->f_op->aio_fsync)
   kiocb->ki_retry = aio_fdsync;
  break;
 case 132:
  ret = -EINVAL;
  if (file->f_op->aio_fsync)
   kiocb->ki_retry = aio_fsync;
  break;
 default:
  dprintk("EINVAL: io_submit: no operation provided\n");
  ret = -EINVAL;
 }

 if (!kiocb->ki_retry)
  return ret;

 return 0;
}
