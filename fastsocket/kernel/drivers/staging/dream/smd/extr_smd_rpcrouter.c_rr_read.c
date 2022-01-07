
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int rpcrouter_need_len ;
 int rpcrouter_wake_lock ;
 int smd_channel ;
 int smd_lock ;
 int smd_read (int ,void*,int) ;
 int smd_read_avail (int ) ;
 int smd_wait ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event (int ,int) ;
 int wake_unlock (int *) ;

__attribute__((used)) static int rr_read(void *data, int len)
{
 int rc;
 unsigned long flags;

 for(;;) {
  spin_lock_irqsave(&smd_lock, flags);
  if (smd_read_avail(smd_channel) >= len) {
   rc = smd_read(smd_channel, data, len);
   spin_unlock_irqrestore(&smd_lock, flags);
   if (rc == len)
    return 0;
   else
    return -EIO;
  }
  rpcrouter_need_len = len;
  wake_unlock(&rpcrouter_wake_lock);
  spin_unlock_irqrestore(&smd_lock, flags);


  wait_event(smd_wait, smd_read_avail(smd_channel) >= len);
 }
 return 0;
}
