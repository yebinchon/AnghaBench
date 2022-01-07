
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omapfb_notifier_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ update_mode; int fbdev; } ;


 int OMAPFB_EVENT_READY ;
 scalar_t__ OMAPFB_MANUAL_UPDATE ;
 TYPE_1__ blizzard ;
 int omapfb_notify_clients (int ,int ) ;

__attribute__((used)) static void blizzard_bind_client(struct omapfb_notifier_block *nb)
{
 if (blizzard.update_mode == OMAPFB_MANUAL_UPDATE) {
  omapfb_notify_clients(blizzard.fbdev, OMAPFB_EVENT_READY);
 }
}
