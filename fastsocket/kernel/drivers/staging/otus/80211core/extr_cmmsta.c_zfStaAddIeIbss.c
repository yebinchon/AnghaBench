
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u16_t ;
struct TYPE_3__ {int atimWindow; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_WLAN_EID_IBSS ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,int) ;
 int zmw_tx_buf_writeh (int *,int *,scalar_t__,int ) ;

u16_t zfStaAddIeIbss(zdev_t* dev, zbuf_t* buf, u16_t offset)
{
    zmw_get_wlan_dev(dev);


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_IBSS);


    zmw_tx_buf_writeb(dev, buf, offset++, 2);


    zmw_tx_buf_writeh(dev, buf, offset, wd->sta.atimWindow);
    offset += 2;

    return offset;
}
