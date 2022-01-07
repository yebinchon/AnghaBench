
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int * context; } ;
typedef TYPE_1__ urb_t ;


 scalar_t__ zfLnxCheckTxBufferCnt (int *) ;
 int zfLnxPutTxUrb (int *) ;
 int zfLnxUsbSubmitTxData (int *) ;

void zfLnxUsbDataOut_callback(urb_t *urb)
{
    zdev_t* dev = urb->context;



    zfLnxPutTxUrb(dev);



    if (zfLnxCheckTxBufferCnt(dev) != 0)
    {
            zfLnxUsbSubmitTxData(dev);

    }
}
