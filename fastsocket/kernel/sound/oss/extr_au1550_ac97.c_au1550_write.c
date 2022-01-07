
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; scalar_t__ private_data; } ;
struct dmabuf {size_t cnt_factor; scalar_t__ dmasize; int count; scalar_t__ nextIn; scalar_t__ rawbuf; int dma_qcount; int fragsize; scalar_t__ nextOut; int wait; scalar_t__ dma_fragsize; int total_bytes; int dmanr; scalar_t__ mapped; } ;
struct au1550_state {int sem; int lock; struct dmabuf dma_dac; } ;
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
 int VERIFY_READ ;
 int __set_current_state (int ) ;
 int access_ok (int ,char const*,size_t) ;
 int add_wait_queue (int *,int *) ;
 scalar_t__ au1xxx_dbdma_put_source (int ,scalar_t__,int) ;
 int copy_dmabuf_user (struct dmabuf*,char*,int,int ) ;
 int current ;
 int err (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,size_t) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_dac (struct au1550_state*) ;
 int wait ;

__attribute__((used)) static ssize_t
au1550_write(struct file *file, const char *buffer, size_t count, loff_t * ppos)
{
 struct au1550_state *s = (struct au1550_state *)file->private_data;
 struct dmabuf *db = &s->dma_dac;
 DECLARE_WAITQUEUE(wait, current);
 ssize_t ret = 0;
 unsigned long flags;
 int cnt, usercnt, avail;

 pr_debug("write: count=%d\n", count);

 if (db->mapped)
  return -ENXIO;
 if (!access_ok(VERIFY_READ, buffer, count))
  return -EFAULT;

 count *= db->cnt_factor;

 mutex_lock(&s->sem);
 add_wait_queue(&db->wait, &wait);

 while (count > 0) {


  do {
   spin_lock_irqsave(&s->lock, flags);
   avail = (int) db->dmasize - db->count;
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



  if ((cnt = copy_dmabuf_user(db, (char *) buffer,
         count > avail ?
         avail : count, 0)) < 0) {
   if (!ret)
    ret = -EFAULT;
   goto out;
  }

  spin_lock_irqsave(&s->lock, flags);
  db->count += cnt;
  db->nextIn += cnt;
  if (db->nextIn >= db->rawbuf + db->dmasize)
   db->nextIn -= db->dmasize;





  while ((db->dma_qcount < 2) && (db->count >= db->fragsize)) {
   if (au1xxx_dbdma_put_source(db->dmanr, db->nextOut,
       db->fragsize) == 0) {
    err("qcount < 2 and no ring room!");
   }
   db->nextOut += db->fragsize;
   if (db->nextOut >= db->rawbuf + db->dmasize)
    db->nextOut -= db->dmasize;
   db->total_bytes += db->dma_fragsize;
   if (db->dma_qcount == 0)
    start_dac(s);
   db->dma_qcount++;
  }
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
