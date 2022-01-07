
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct TYPE_2__ {int bRate; int bRateBasic; int gRate; int gRateBasic; } ;


 scalar_t__ ZM_RATE_SET_CCK ;
 scalar_t__ ZM_RATE_SET_OFDM ;
 TYPE_1__* wd ;
 scalar_t__* zg11bRateTbl ;
 scalar_t__* zg11gRateTbl ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int,scalar_t__) ;

u16_t zfMmAddIeSupportRate(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t eid, u8_t rateSet)
{
    u8_t len = 0;
    u16_t i;

    zmw_get_wlan_dev(dev);







    if ( rateSet == ZM_RATE_SET_CCK )
    {
        for (i=0; i<4; i++)
        {
            if ((wd->bRate & (0x1<<i)) == (0x1<<i))

            {
                zmw_tx_buf_writeb(dev, buf, offset+len+2,
                                     zg11bRateTbl[i]+((wd->bRateBasic & (0x1<<i))<<(7-i)));
                len++;
            }
        }
    }
    else if ( rateSet == ZM_RATE_SET_OFDM )
    {
        for (i=0; i<8; i++)
        {
            if ((wd->gRate & (0x1<<i)) == (0x1<<i))

            {
                zmw_tx_buf_writeb(dev, buf, offset+len+2,
                                     zg11gRateTbl[i]+((wd->gRateBasic & (0x1<<i))<<(7-i)));
                len++;
            }
        }
    }

    if (len > 0)
    {

        zmw_tx_buf_writeb(dev, buf, offset, eid);


        zmw_tx_buf_writeb(dev, buf, offset+1, len);


        offset += (2+len);
    }

    return offset;
}
