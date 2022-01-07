
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; scalar_t__ private_data; } ;
struct dmabuf {size_t cnt_factor; int count; scalar_t__ nextOut; scalar_t__ rawbuf; scalar_t__ dmasize; int wait; scalar_t__ stopped; scalar_t__ mapped; } ;
struct au1550_state {int sem; int lock; struct dmabuf dma_adc; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EAGAIN ;
 int EFAULT ;
 int ENXIO ;
 int ERESTARTSYS ;
 int O_NONBLOCK ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int VERIFY_WRITE ;
 int __set_current_state (int ) ;
 int access_ok (int ,char*,size_t) ;
 int add_wait_queue (int *,int *) ;
 int copy_dmabuf_user (struct dmabuf*,char*,int,int) ;
 int current ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_adc (struct au1550_state*) ;
 int wait ;

__attribute__((used)) static ssize_t
au1550_read(struct file *file, char *buffer, size_t count, loff_t *ppos)
{
 struct au1550_state *s = (struct au1550_state *)file->private_data;
 struct dmabuf *db = &s->dma_adc;
 DECLARE_WAITQUEUE(wait, current);
 ssize_t ret;
 unsigned long flags;
 int cnt, usercnt, avail;

 if (db->mapped)
  return -ENXIO;
 if (!access_ok(VERIFY_WRITE, buffer, count))
  return -EFAULT;
 ret = 0;

 count *= db->cnt_factor;

 mutex_lock(&s->sem);
 add_wait_queue(&db->wait, &wait);

 while (count > 0) {


  do {
   spin_lock_irqsave(&s->lock, flags);
   if (db->stopped)
    start_adc(s);
   avail = db->count;
   if (avail <= 0)
    __set_current_state(TASK_INTERRUPTIBLE);
   spin_unlock_irqrestore(&s->lock, flags);
   if (avail <= 0) {
    if (file->f_flags & O_NONBLOCK) {
     if (!ret)
      ret = -EAGAIN;
     goto out;
    }
    mutex_unlock(&s->sem);
    schedule();
    if (signal_pending(current)) {
     if (!ret)
      ret = -ERESTARTSYS;
     goto out2;
    }
    mutex_lock(&s->sem);
   }
  } while (avail <= 0);



  if ((cnt = copy_dmabuf_user(db, buffer,
         count > avail ?
         avail : count, 1)) < 0) {
   if (!ret)
    ret = -EFAULT;
   goto out;
  }

  spin_lock_irqsave(&s->lock, flags);
  db->count -= cnt;
  db->nextOut += cnt;
  if (db->nextOut >= db->rawbuf + db->dmasize)
   db->nextOut -= db->dmasize;
  spin_unlock_irqrestore(&s->lock, flags);

  count -= cnt;
  usercnt = cnt / db->cnt_factor;
  buffer += usercnt;
  ret += usercnt;
 }

out:
 mutex_unlock(&s->sem);
out2:
 remove_wait_queue(&db->wait, &wait);
 set_current_state(TASK_RUNNING);
 return ret;
}
