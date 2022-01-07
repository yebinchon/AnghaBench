
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct mts_desc {int usb_dev; int usb_intf; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;


 int FAILED ;
 int MTS_DEBUG_GOT_HERE () ;
 int SUCCESS ;
 int mts_debug_dump (struct mts_desc*) ;
 int usb_lock_device_for_reset (int ,int ) ;
 int usb_reset_device (int ) ;
 int usb_unlock_device (int ) ;

__attribute__((used)) static int mts_scsi_host_reset(struct scsi_cmnd *srb)
{
 struct mts_desc* desc = (struct mts_desc*)(srb->device->host->hostdata[0]);
 int result;

 MTS_DEBUG_GOT_HERE();
 mts_debug_dump(desc);

 result = usb_lock_device_for_reset(desc->usb_dev, desc->usb_intf);
 if (result == 0) {
  result = usb_reset_device(desc->usb_dev);
  usb_unlock_device(desc->usb_dev);
 }
 return result ? FAILED : SUCCESS;
}
