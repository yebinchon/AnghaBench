
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct acm {int rx_buflimit; int work; int urb_task; TYPE_1__* ru; TYPE_2__* wb; int ctrlurb; } ;
struct TYPE_4__ {int urb; } ;
struct TYPE_3__ {int urb; } ;


 int ACM_NW ;
 int cancel_work_sync (int *) ;
 int dbg (char*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void stop_data_traffic(struct acm *acm)
{
 int i;
 dbg("Entering stop_data_traffic");

 tasklet_disable(&acm->urb_task);

 usb_kill_urb(acm->ctrlurb);
 for (i = 0; i < ACM_NW; i++)
  usb_kill_urb(acm->wb[i].urb);
 for (i = 0; i < acm->rx_buflimit; i++)
  usb_kill_urb(acm->ru[i].urb);

 tasklet_enable(&acm->urb_task);

 cancel_work_sync(&acm->work);
}
