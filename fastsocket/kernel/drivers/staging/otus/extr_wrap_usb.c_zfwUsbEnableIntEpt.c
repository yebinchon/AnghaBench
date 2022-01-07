
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u8_t ;
typedef int u32_t ;


 int zfLnxInitUsbRxQ (int *) ;
 int zfLnxInitUsbTxQ (int *) ;
 int zfLnxSubmitRegInUrb (int *) ;

u32_t zfwUsbEnableIntEpt(zdev_t *dev, u8_t endpt)
{

    zfLnxInitUsbTxQ(dev);


    zfLnxInitUsbRxQ(dev);




    zfLnxSubmitRegInUrb(dev);

    return 0;
}
