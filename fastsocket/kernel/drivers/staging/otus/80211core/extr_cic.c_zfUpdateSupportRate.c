
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_2__ {int bRate; int bRateBasic; int gRate; int gRateBasic; } ;


 TYPE_1__* wd ;
 int* zg11bRateTbl ;
 int* zg11gRateTbl ;
 int zmw_get_wlan_dev (int *) ;

void zfUpdateSupportRate(zdev_t* dev, u8_t* rateArray)
{
    u8_t bRate=0, bRateBasic=0, gRate=0, gRateBasic=0;
    u8_t length = rateArray[1];
    u8_t i, j;

    zmw_get_wlan_dev(dev);

    for(i=2; i<length+2; i++)
    {
        for(j=0; j<4; j++)
        {
            if ( (rateArray[i] & 0x7f) == zg11bRateTbl[j] )
            {
                bRate |= (1 << j);
                if ( rateArray[i] & 0x80 )
                {
                    bRateBasic |= (1 << j);
                }
            }
        }

        if ( j == 4 )
        {
            for(j=0; j<8; j++)
            {
                if ( (rateArray[i] & 0x7f) == zg11gRateTbl[j] )
                {
                    gRate |= (1 << j);
                    if ( rateArray[i] & 0x80 )
                    {
                        gRateBasic |= (1 << j);
                    }
                }
            }
        }
    }


    wd->bRate |= bRate;
    wd->bRateBasic |= bRateBasic;
    wd->gRate |= gRate;
    wd->gRateBasic |= gRateBasic;
}
