
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {int hw_lock; int spinlock; scalar_t__ streaming; } ;


 int EINVAL ;
 int abort_queued (struct go7007*) ;
 int go7007_reset_encoder (struct go7007*) ;
 int go7007_stream_stop (struct go7007*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int go7007_streamoff(struct go7007 *go)
{
 int retval = -EINVAL;
 unsigned long flags;

 mutex_lock(&go->hw_lock);
 if (go->streaming) {
  go->streaming = 0;
  go7007_stream_stop(go);
  spin_lock_irqsave(&go->spinlock, flags);
  abort_queued(go);
  spin_unlock_irqrestore(&go->spinlock, flags);
  go7007_reset_encoder(go);
  retval = 0;
 }
 mutex_unlock(&go->hw_lock);
 return 0;
}
