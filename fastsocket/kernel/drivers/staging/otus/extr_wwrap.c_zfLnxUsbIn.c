
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_1__ zdev_t ;
struct TYPE_7__ {int data; } ;
typedef TYPE_2__ zbuf_t ;
typedef int urb_t ;
typedef int u32_t ;
struct usbdrv_private {int udev; } ;


 int USB_DIR_IN ;
 int USB_WLAN_RX_PIPE ;
 int ZM_MAX_RX_BUFFER_SIZE ;
 int zfLnxUsbDataIn_callback ;
 int zfLnxUsbSubmitBulkUrb (int *,int ,int ,int ,int ,int ,int ,TYPE_1__*) ;

u32_t zfLnxUsbIn(zdev_t* dev, urb_t *urb, zbuf_t *buf)
{
    u32_t ret;
    struct usbdrv_private *macp = dev->ml_priv;


    ret = zfLnxUsbSubmitBulkUrb(urb, macp->udev, USB_WLAN_RX_PIPE,
            USB_DIR_IN, buf->data, ZM_MAX_RX_BUFFER_SIZE,
            zfLnxUsbDataIn_callback, dev);




    return ret;
}
