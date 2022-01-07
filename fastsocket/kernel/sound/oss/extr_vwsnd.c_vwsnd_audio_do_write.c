
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int flags; int swb_u_idx; int * swbuf; int queue; } ;
typedef TYPE_1__ vwsnd_port_t ;
struct TYPE_12__ {TYPE_1__ rport; TYPE_1__ wport; } ;
typedef TYPE_2__ vwsnd_dev_t ;
struct file {int f_mode; int f_flags; TYPE_2__* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_13__ {void* state; } ;


 int DBGEV (char*,struct file*,char const*,size_t,int *) ;
 int DBGPV (char*,int) ;
 int DECLARE_WAITQUEUE (int ,TYPE_4__*) ;
 int DISABLED ;
 int EAGAIN ;
 int EFAULT ;
 int EINVAL ;
 int ERESTARTSYS ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 void* TASK_RUNNING ;
 int VERIFY_WRITE ;
 int access_ok (int ,char const*,size_t) ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ copy_from_user (int *,char const*,int) ;
 TYPE_4__* current ;
 int pcm_output (TYPE_2__*,int ,int) ;
 int pcm_setup (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (TYPE_4__*) ;
 int swb_inc_u (TYPE_1__*,int ) ;
 int wait ;

__attribute__((used)) static ssize_t vwsnd_audio_do_write(struct file *file,
        const char *buffer,
        size_t count,
        loff_t *ppos)
{
 vwsnd_dev_t *devc = file->private_data;
 vwsnd_port_t *wport = ((file->f_mode & FMODE_WRITE) ?
          &devc->wport : ((void*)0));
 int ret, nb;

 DBGEV("(file=0x%p, buffer=0x%p, count=%d, ppos=0x%p)\n",
       file, buffer, count, ppos);

 if (!wport)
  return -EINVAL;

 if (wport->swbuf == ((void*)0)) {
  vwsnd_port_t *rport = (file->f_mode & FMODE_READ) ?
   &devc->rport : ((void*)0);
  ret = pcm_setup(devc, rport, wport);
  if (ret < 0)
   return ret;
 }
 if (!access_ok(VERIFY_WRITE, buffer, count))
  return -EFAULT;
 ret = 0;
 while (count) {
  DECLARE_WAITQUEUE(wait, current);
  add_wait_queue(&wport->queue, &wait);
  while ((nb = swb_inc_u(wport, 0)) == 0) {
   set_current_state(TASK_INTERRUPTIBLE);
   if (wport->flags & DISABLED ||
       file->f_flags & O_NONBLOCK) {
    current->state = TASK_RUNNING;
    remove_wait_queue(&wport->queue, &wait);
    return ret ? ret : -EAGAIN;
   }
   schedule();
   if (signal_pending(current)) {
    current->state = TASK_RUNNING;
    remove_wait_queue(&wport->queue, &wait);
    return ret ? ret : -ERESTARTSYS;
   }
  }
  current->state = TASK_RUNNING;
  remove_wait_queue(&wport->queue, &wait);

  if (nb > count)
   nb = count;
  DBGPV("nb = %d\n", nb);
  if (copy_from_user(wport->swbuf + wport->swb_u_idx, buffer, nb))
   return -EFAULT;
  pcm_output(devc, 0, nb);
  buffer += nb;
  count -= nb;
  ret += nb;
 }
 DBGPV("returning %d\n", ret);
 return ret;
}
