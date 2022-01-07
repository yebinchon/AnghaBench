
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct wb35_reg {int SyncIoPause; scalar_t__ EP0vm_state; } ;
struct TYPE_2__ {int udev; } ;
struct hw_data {int SurpriseRemove; TYPE_1__ WbUsb; struct wb35_reg reg; } ;


 int HZ ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 scalar_t__ VM_RUNNING ;
 scalar_t__ VM_STOP ;
 int Wb35Reg_EP0VM_start (struct hw_data*) ;
 int cpu_to_le32 (int ) ;
 int msleep (int) ;
 int printk (char*) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

unsigned char
Wb35Reg_WriteSync( struct hw_data * pHwData, u16 RegisterNo, u32 RegisterValue )
{
 struct wb35_reg *reg = &pHwData->reg;
 int ret = -1;


 if (pHwData->SurpriseRemove)
  return 0;

 RegisterValue = cpu_to_le32(RegisterValue);


 reg->SyncIoPause = 1;


 while (reg->EP0vm_state != VM_STOP)
  msleep(10);


 reg->EP0vm_state = VM_RUNNING;
 ret = usb_control_msg( pHwData->WbUsb.udev,
          usb_sndctrlpipe( pHwData->WbUsb.udev, 0 ),
          0x03, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
          0x0,RegisterNo, &RegisterValue, 4, HZ*100 );
 reg->EP0vm_state = VM_STOP;
 reg->SyncIoPause = 0;

 Wb35Reg_EP0VM_start(pHwData);

 if (ret < 0) {




  pHwData->SurpriseRemove = 1;
  return 0;
 }

 return 1;
}
