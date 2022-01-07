
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_notification {scalar_t__ notify; void* data; int mutex; } ;
struct gpio_runtime {struct gpio_notification line_out_notify; struct gpio_notification line_in_notify; struct gpio_notification headphone_notify; } ;
typedef scalar_t__ notify_func_t ;
typedef enum notify_type { ____Placeholder_notify_type } notify_type ;





 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int NO_IRQ ;
 int free_irq (int,struct gpio_notification*) ;
 int ftr_handle_notify_irq ;
 int headphone_detect_irq ;
 int linein_detect_irq ;
 int lineout_detect_irq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_irq (int,int ,int ,char*,struct gpio_notification*) ;

__attribute__((used)) static int ftr_set_notify(struct gpio_runtime *rt,
     enum notify_type type,
     notify_func_t notify,
     void *data)
{
 struct gpio_notification *notif;
 notify_func_t old;
 int irq;
 char *name;
 int err = -EBUSY;

 switch (type) {
 case 130:
  notif = &rt->headphone_notify;
  name = "headphone-detect";
  irq = headphone_detect_irq;
  break;
 case 129:
  notif = &rt->line_in_notify;
  name = "linein-detect";
  irq = linein_detect_irq;
  break;
 case 128:
  notif = &rt->line_out_notify;
  name = "lineout-detect";
  irq = lineout_detect_irq;
  break;
 default:
  return -EINVAL;
 }

 if (irq == NO_IRQ)
  return -ENODEV;

 mutex_lock(&notif->mutex);

 old = notif->notify;

 if (!old && !notify) {
  err = 0;
  goto out_unlock;
 }

 if (old && notify) {
  if (old == notify && notif->data == data)
   err = 0;
  goto out_unlock;
 }

 if (old && !notify)
  free_irq(irq, notif);

 if (!old && notify) {
  err = request_irq(irq, ftr_handle_notify_irq, 0, name, notif);
  if (err)
   goto out_unlock;
 }

 notif->notify = notify;
 notif->data = data;

 err = 0;
 out_unlock:
 mutex_unlock(&notif->mutex);
 return err;
}
