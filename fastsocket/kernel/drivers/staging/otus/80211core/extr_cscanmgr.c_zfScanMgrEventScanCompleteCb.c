
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;


 int zfPowerSavingMgrIsSleeping (int *) ;
 int zfSendNullData (int *,int ) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;

__attribute__((used)) static void zfScanMgrEventScanCompleteCb(zdev_t* dev)
{
    zmw_get_wlan_dev(dev);

    if ((zfStaIsConnected(dev)) && (!zfPowerSavingMgrIsSleeping(dev)))
    {
        zfSendNullData(dev, 0);
    }
    return;
}
