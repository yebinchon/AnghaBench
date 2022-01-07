
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omapfb_notifier_block {int dummy; } ;
struct TYPE_4__ {scalar_t__ update_mode; TYPE_1__* fbdev; } ;
struct TYPE_3__ {int dev; } ;


 int OMAPFB_EVENT_READY ;
 scalar_t__ OMAPFB_MANUAL_UPDATE ;
 int dev_dbg (int ,char*,scalar_t__) ;
 TYPE_2__ hwa742 ;
 int omapfb_notify_clients (TYPE_1__*,int ) ;

__attribute__((used)) static void hwa742_bind_client(struct omapfb_notifier_block *nb)
{
 dev_dbg(hwa742.fbdev->dev, "update_mode %d\n", hwa742.update_mode);
 if (hwa742.update_mode == OMAPFB_MANUAL_UPDATE) {
  omapfb_notify_clients(hwa742.fbdev, OMAPFB_EVENT_READY);
 }
}
