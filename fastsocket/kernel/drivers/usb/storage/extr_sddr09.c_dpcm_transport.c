
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct us_data {int dummy; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_2__ {int lun; } ;


 int USB_STOR_TRANSPORT_ERROR ;
 int US_DEBUGP (char*,int) ;
 int sddr09_transport (struct scsi_cmnd*,struct us_data*) ;
 int usb_stor_CB_transport (struct scsi_cmnd*,struct us_data*) ;

__attribute__((used)) static int dpcm_transport(struct scsi_cmnd *srb, struct us_data *us)
{
 int ret;

 US_DEBUGP("dpcm_transport: LUN=%d\n", srb->device->lun);

 switch (srb->device->lun) {
 case 0:




  ret = usb_stor_CB_transport(srb, us);
  break;

 case 1:
  srb->device->lun = 0;
  ret = sddr09_transport(srb, us);
  srb->device->lun = 1;
  break;

 default:
  US_DEBUGP("dpcm_transport: Invalid LUN %d\n",
    srb->device->lun);
  ret = USB_STOR_TRANSPORT_ERROR;
  break;
 }
 return ret;
}
