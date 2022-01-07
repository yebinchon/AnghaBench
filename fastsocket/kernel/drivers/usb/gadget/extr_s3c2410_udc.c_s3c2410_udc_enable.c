
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int speed; } ;
struct s3c2410_udc {TYPE_3__* ep; TYPE_1__ gadget; } ;
struct TYPE_8__ {int (* udc_command ) (int ) ;} ;
struct TYPE_6__ {int maxpacket; } ;
struct TYPE_7__ {TYPE_2__ ep; } ;


 int DEBUG_NORMAL ;
 int DEFAULT_POWER_STATE ;
 int S3C2410_ENDPOINTS ;
 int S3C2410_UDC_EP_INT_EN_REG ;
 int S3C2410_UDC_INDEX_REG ;
 int S3C2410_UDC_INT_EP0 ;
 int S3C2410_UDC_MAXP_REG ;
 int S3C2410_UDC_PWR_REG ;
 int S3C2410_UDC_P_ENABLE ;
 int S3C2410_UDC_USBINT_RESET ;
 int S3C2410_UDC_USBINT_SUSPEND ;
 int S3C2410_UDC_USB_INT_EN_REG ;
 int USB_SPEED_FULL ;
 int dprintk (int ,char*) ;
 int stub1 (int ) ;
 TYPE_4__* udc_info ;
 int udc_write (int,int ) ;

__attribute__((used)) static void s3c2410_udc_enable(struct s3c2410_udc *dev)
{
 int i;

 dprintk(DEBUG_NORMAL, "s3c2410_udc_enable called\n");


 dev->gadget.speed = USB_SPEED_FULL;


 for (i = 0; i < S3C2410_ENDPOINTS; i++) {
  udc_write(i, S3C2410_UDC_INDEX_REG);
  udc_write((dev->ep[i].ep.maxpacket & 0x7ff) >> 3,
    S3C2410_UDC_MAXP_REG);
 }


 udc_write(DEFAULT_POWER_STATE, S3C2410_UDC_PWR_REG);


 udc_write(S3C2410_UDC_USBINT_RESET | S3C2410_UDC_USBINT_SUSPEND,
   S3C2410_UDC_USB_INT_EN_REG);


 udc_write(S3C2410_UDC_INT_EP0, S3C2410_UDC_EP_INT_EN_REG);


 if (udc_info && udc_info->udc_command)
  udc_info->udc_command(S3C2410_UDC_P_ENABLE);
}
