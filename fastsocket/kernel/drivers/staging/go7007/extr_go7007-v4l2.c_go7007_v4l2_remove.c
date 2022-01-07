
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007 {scalar_t__ video_dev; int hw_lock; int spinlock; scalar_t__ streaming; } ;


 int abort_queued (struct go7007*) ;
 int go7007_stream_stop (struct go7007*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int video_unregister_device (scalar_t__) ;

void go7007_v4l2_remove(struct go7007 *go)
{
 unsigned long flags;

 mutex_lock(&go->hw_lock);
 if (go->streaming) {
  go->streaming = 0;
  go7007_stream_stop(go);
  spin_lock_irqsave(&go->spinlock, flags);
  abort_queued(go);
  spin_unlock_irqrestore(&go->spinlock, flags);
 }
 mutex_unlock(&go->hw_lock);
 if (go->video_dev)
  video_unregister_device(go->video_dev);
}
