
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_2__ {scalar_t__ wlanMode; } ;


 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_tx_buf_readh (int *,int *,int) ;

u8_t zfiWlanGetDestAddrFromBuf(zdev_t *dev, zbuf_t *buf, u16_t *macAddr)
{
    macAddr[0] = zmw_tx_buf_readh(dev, buf, 0);
    macAddr[1] = zmw_tx_buf_readh(dev, buf, 2);
    macAddr[2] = zmw_tx_buf_readh(dev, buf, 4);


    return 0;
}
