
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef scalar_t__ u8_t ;
typedef scalar_t__ u16_t ;


 int zmw_get_wlan_dev (int *) ;

u16_t zfComputeBssInfoWeightValue(zdev_t *dev, u8_t isBMode, u8_t isHT, u8_t isHT40, u8_t signalStrength)
{
 u8_t weightOfB = 0;
 u8_t weightOfAGBelowThr = 0;
 u8_t weightOfAGUpThr = 15;
 u8_t weightOfN20BelowThr = 15;
 u8_t weightOfN20UpThr = 30;
 u8_t weightOfN40BelowThr = 16;
 u8_t weightOfN40UpThr = 32;

    zmw_get_wlan_dev(dev);

    if( isBMode == 0 )
        return (signalStrength + weightOfB);
    else
    {
        if( isHT == 0 && isHT40 == 0 )
        {
            if( signalStrength < 18 )
    return signalStrength + weightOfAGBelowThr;
   else
    return (signalStrength + weightOfAGUpThr);
        }
        else if( isHT == 1 && isHT40 == 0 )
        {
            if( signalStrength < 23 )
                return (signalStrength + weightOfN20BelowThr);
            else
                return (signalStrength + weightOfN20UpThr);
        }
        else
        {
            if( signalStrength < 16 )
                return (signalStrength + weightOfN40BelowThr);
            else
                return (signalStrength + weightOfN40UpThr);
        }
    }
}
