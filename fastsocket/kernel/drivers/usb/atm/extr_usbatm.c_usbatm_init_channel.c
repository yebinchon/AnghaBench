
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct usbatm_channel {TYPE_1__ delay; int tasklet; int list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_timer (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int usbatm_tasklet_schedule ;

__attribute__((used)) static void usbatm_init_channel(struct usbatm_channel *channel)
{
 spin_lock_init(&channel->lock);
 INIT_LIST_HEAD(&channel->list);
 channel->delay.function = usbatm_tasklet_schedule;
 channel->delay.data = (unsigned long) &channel->tasklet;
 init_timer(&channel->delay);
}
