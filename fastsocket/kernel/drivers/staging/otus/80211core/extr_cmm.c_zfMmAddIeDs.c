
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_2__ {int frequency; } ;


 int ZM_WLAN_EID_DS ;
 TYPE_1__* wd ;
 int zfChFreqToNum (int ,int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int) ;

u16_t zfMmAddIeDs(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    zmw_get_wlan_dev(dev);


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_DS);


    zmw_tx_buf_writeb(dev, buf, offset++, 1);


    zmw_tx_buf_writeb(dev, buf, offset++,
                         zfChFreqToNum(wd->frequency, ((void*)0)));

    return offset;
}
