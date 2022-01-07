
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u16_t ;
struct TYPE_3__ {size_t ssidLen; size_t* ssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 size_t ZM_WLAN_EID_SSID ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,size_t) ;

u16_t zfStaAddIeSsid(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    u16_t i;

    zmw_get_wlan_dev(dev);


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_SSID);


    zmw_tx_buf_writeb(dev, buf, offset++, wd->sta.ssidLen);


    for (i=0; i<wd->sta.ssidLen; i++)
    {
        zmw_tx_buf_writeb(dev, buf, offset++, wd->sta.ssid[i]);
    }

    return offset;
}
