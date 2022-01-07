
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int USB_ENDPOINT_INT_INDEX ;
 int USB_ENDPOINT_RX_INDEX ;
 int zfwUsbEnableIntEpt (int *,int ) ;
 int zfwUsbEnableRxEpt (int *,int ) ;

void zfUsbInit(zdev_t* dev)
{

    zfwUsbEnableRxEpt(dev, USB_ENDPOINT_RX_INDEX);
    zfwUsbEnableIntEpt(dev, USB_ENDPOINT_INT_INDEX);

    return;
}
