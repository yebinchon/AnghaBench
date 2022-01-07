
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef size_t u8_t ;
typedef size_t u16_t ;


 int zmw_get_wlan_dev (int *) ;

u16_t zfFindMinimumUtilizationChannelIndex(zdev_t* dev, u16_t* array, u16_t count)
{
    u8_t i;
    u16_t tempMinIndex, tempMinValue;

    zmw_get_wlan_dev(dev);

    i = 1;
    tempMinIndex = 0;
    tempMinValue = array[tempMinIndex];
    while( i< count )
    {
        if( array[i] < tempMinValue )
        {
            tempMinValue = array[i];
            tempMinIndex = i;
        }
        i++;
    }

    return tempMinIndex;
}
