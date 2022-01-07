
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adsp_device {scalar_t__ abort; int event_queue_lock; int event_queue; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int adsp_events_pending(struct adsp_device *adev)
{
 unsigned long flags;
 int yes;
 spin_lock_irqsave(&adev->event_queue_lock, flags);
 yes = !list_empty(&adev->event_queue);
 spin_unlock_irqrestore(&adev->event_queue_lock, flags);
 return yes || adev->abort;
}
