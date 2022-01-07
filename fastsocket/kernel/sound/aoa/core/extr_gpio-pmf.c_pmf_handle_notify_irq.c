
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_notification {int work; } ;


 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void pmf_handle_notify_irq(void *data)
{
 struct gpio_notification *notif = data;

 schedule_delayed_work(&notif->work, 0);
}
