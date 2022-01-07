
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_2__ {int bRate; int bRateBasic; } ;


 TYPE_1__* wd ;
 int* zg11bRateTbl ;
 int zmw_get_wlan_dev (int *) ;

void zfiWlanQuerySupportRate(zdev_t* dev, u8_t* rateArray, u8_t* pLength)
{
    u8_t i, j=0;

    zmw_get_wlan_dev(dev);

    for( i=0; i<4; i++ )
    {
        if ( wd->bRate & (0x1 << i) )
        {
            rateArray[j] = zg11bRateTbl[i] +
                           ((wd->bRateBasic & (0x1<<i))<<(7-i));
            j++;
        }
    }

    *pLength = j;
}
