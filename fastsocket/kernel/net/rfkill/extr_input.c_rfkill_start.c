
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_handle {TYPE_1__* dev; } ;
struct TYPE_2__ {int event_lock; int sw; int swbit; int evbit; } ;


 int EV_SW ;
 int SW_RFKILL_ALL ;
 int rfkill_schedule_evsw_rfkillall (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void rfkill_start(struct input_handle *handle)
{





 spin_lock_irq(&handle->dev->event_lock);

 if (test_bit(EV_SW, handle->dev->evbit) &&
     test_bit(SW_RFKILL_ALL, handle->dev->swbit))
  rfkill_schedule_evsw_rfkillall(test_bit(SW_RFKILL_ALL,
       handle->dev->sw));

 spin_unlock_irq(&handle->dev->event_lock);
}
