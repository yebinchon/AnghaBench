
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct usbdrv_private* ml_priv; } ;
typedef TYPE_2__ zdev_t ;
struct zfCbUsbFuncTbl {int zfcbUsbOutComplete; int zfcbUsbRegIn; int zfcbUsbRecv; } ;
struct TYPE_4__ {int zfcbUsbOutComplete; int zfcbUsbRegIn; int zfcbUsbRecv; } ;
struct usbdrv_private {TYPE_1__ usbCbFunctions; } ;



void zfwUsbRegisterCallBack(zdev_t* dev, struct zfCbUsbFuncTbl *zfUsbFunc) {
    struct usbdrv_private *macp = dev->ml_priv;

    macp->usbCbFunctions.zfcbUsbRecv = zfUsbFunc->zfcbUsbRecv;
    macp->usbCbFunctions.zfcbUsbRegIn = zfUsbFunc->zfcbUsbRegIn;
    macp->usbCbFunctions.zfcbUsbOutComplete = zfUsbFunc->zfcbUsbOutComplete;

    return;
}
