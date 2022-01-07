
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct mx3fb_info {int cookie; TYPE_1__* txd; struct mx3fb_data* mx3fb; } ;
struct mx3fb_data {int lock; } ;
struct TYPE_6__ {TYPE_2__* device; } ;
struct TYPE_5__ {int (* device_terminate_all ) (TYPE_3__*) ;} ;
struct TYPE_4__ {TYPE_3__* chan; } ;


 int EINVAL ;
 int sdc_fb_uninit (struct mx3fb_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*) ;

__attribute__((used)) static void sdc_disable_channel(struct mx3fb_info *mx3_fbi)
{
 struct mx3fb_data *mx3fb = mx3_fbi->mx3fb;
 uint32_t enabled;
 unsigned long flags;

 spin_lock_irqsave(&mx3fb->lock, flags);

 enabled = sdc_fb_uninit(mx3_fbi);

 spin_unlock_irqrestore(&mx3fb->lock, flags);

 mx3_fbi->txd->chan->device->device_terminate_all(mx3_fbi->txd->chan);
 mx3_fbi->txd = ((void*)0);
 mx3_fbi->cookie = -EINVAL;
}
