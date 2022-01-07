
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {int delay_wait; int dflags; int scanning_done; TYPE_1__* pusb_dev; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ USB_STATE_NOTATTACHED ;
 int US_FLIDX_DISCONNECTING ;
 int US_FLIDX_DONT_SCAN ;
 int scsi_lock (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int scsi_unlock (struct Scsi_Host*) ;
 int set_bit (int ,int *) ;
 struct Scsi_Host* us_to_host (struct us_data*) ;
 int wait_for_completion (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void quiesce_and_remove_host(struct us_data *us)
{
 struct Scsi_Host *host = us_to_host(us);


 if (us->pusb_dev->state == USB_STATE_NOTATTACHED)
  set_bit(US_FLIDX_DISCONNECTING, &us->dflags);




 set_bit(US_FLIDX_DONT_SCAN, &us->dflags);
 wake_up(&us->delay_wait);
 wait_for_completion(&us->scanning_done);




 scsi_remove_host(host);




 scsi_lock(host);
 set_bit(US_FLIDX_DISCONNECTING, &us->dflags);
 scsi_unlock(host);
 wake_up(&us->delay_wait);
}
