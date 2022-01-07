
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_notification {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static irqreturn_t ftr_handle_notify_irq(int xx, void *data)
{
 struct gpio_notification *notif = data;

 schedule_delayed_work(&notif->work, 0);

 return IRQ_HANDLED;
}
