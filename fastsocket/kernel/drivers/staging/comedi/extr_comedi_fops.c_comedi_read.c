
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int f_flags; TYPE_1__* f_dentry; } ;
struct comedi_subdevice {struct file* busy; struct comedi_async* async; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int minor; int attached; } ;
struct comedi_async {scalar_t__ buf_read_ptr; scalar_t__ prealloc_bufsz; int prealloc_buf; scalar_t__ buf_read_count; scalar_t__ buf_write_count; int wait_head; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int d_inode; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int DPRINTK (char*,int ) ;
 int EACCES ;
 int EAGAIN ;
 int EFAULT ;
 int EIO ;
 int ENODEV ;
 int EPIPE ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int SRF_ERROR ;
 int SRF_RUNNING ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int add_wait_queue (int *,int *) ;
 int comedi_buf_read_alloc (struct comedi_async*,int) ;
 int comedi_buf_read_free (struct comedi_async*,int) ;
 int comedi_buf_read_n_available (struct comedi_async*) ;
 struct comedi_device_file_info* comedi_get_device_file_info (unsigned int const) ;
 struct comedi_subdevice* comedi_get_read_subdevice (struct comedi_device_file_info*) ;
 int comedi_get_subdevice_runflags (struct comedi_subdevice*) ;
 int copy_to_user (char*,int,int) ;
 int current ;
 int do_become_nonbusy (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int iminor (int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static ssize_t comedi_read(struct file *file, char *buf, size_t nbytes,
      loff_t * offset)
{
 struct comedi_subdevice *s;
 struct comedi_async *async;
 int n, m, count = 0, retval = 0;
 DECLARE_WAITQUEUE(wait, current);
 const unsigned minor = iminor(file->f_dentry->d_inode);
 struct comedi_device_file_info *dev_file_info =
     comedi_get_device_file_info(minor);
 struct comedi_device *dev = dev_file_info->device;

 if (!dev->attached) {
  DPRINTK("no driver configured on comedi%i\n", dev->minor);
  retval = -ENODEV;
  goto done;
 }

 s = comedi_get_read_subdevice(dev_file_info);
 if (s == ((void*)0)) {
  retval = -EIO;
  goto done;
 }
 async = s->async;
 if (!nbytes) {
  retval = 0;
  goto done;
 }
 if (!s->busy) {
  retval = 0;
  goto done;
 }
 if (s->busy != file) {
  retval = -EACCES;
  goto done;
 }

 add_wait_queue(&async->wait_head, &wait);
 while (nbytes > 0 && !retval) {
  set_current_state(TASK_INTERRUPTIBLE);

  n = nbytes;

  m = comedi_buf_read_n_available(async);

  if (async->buf_read_ptr + m > async->prealloc_bufsz)
   m = async->prealloc_bufsz - async->buf_read_ptr;

  if (m < n)
   n = m;

  if (n == 0) {
   if (!(comedi_get_subdevice_runflags(s) & SRF_RUNNING)) {
    do_become_nonbusy(dev, s);
    if (comedi_get_subdevice_runflags(s) &
        SRF_ERROR) {
     retval = -EPIPE;
    } else {
     retval = 0;
    }
    break;
   }
   if (file->f_flags & O_NONBLOCK) {
    retval = -EAGAIN;
    break;
   }
   if (signal_pending(current)) {
    retval = -ERESTARTSYS;
    break;
   }
   schedule();
   if (!s->busy) {
    retval = 0;
    break;
   }
   if (s->busy != file) {
    retval = -EACCES;
    break;
   }
   continue;
  }
  m = copy_to_user(buf, async->prealloc_buf +
     async->buf_read_ptr, n);
  if (m) {
   n -= m;
   retval = -EFAULT;
  }

  comedi_buf_read_alloc(async, n);
  comedi_buf_read_free(async, n);

  count += n;
  nbytes -= n;

  buf += n;
  break;
 }
 if (!(comedi_get_subdevice_runflags(s) & (SRF_ERROR | SRF_RUNNING)) &&
     async->buf_read_count - async->buf_write_count == 0) {
  do_become_nonbusy(dev, s);
 }
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&async->wait_head, &wait);

done:
 return count ? count : retval;
}
