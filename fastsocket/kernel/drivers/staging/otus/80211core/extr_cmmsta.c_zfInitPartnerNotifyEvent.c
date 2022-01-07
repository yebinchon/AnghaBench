
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsPartnerNotifyEvent {int bssid; scalar_t__ peerMacAddr; } ;
struct TYPE_3__ {scalar_t__ bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 scalar_t__ ZM_WLAN_HEADER_A2_OFFSET ;
 TYPE_2__* wd ;
 int zfMemoryCopy (int ,int *,int) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readh (int *,int *,scalar_t__) ;

void zfInitPartnerNotifyEvent(zdev_t* dev, zbuf_t* buf, struct zsPartnerNotifyEvent *event)
{
    u16_t *peerMacAddr;

    zmw_get_wlan_dev(dev);

    peerMacAddr = (u16_t *)event->peerMacAddr;

    zfMemoryCopy(event->bssid, (u8_t *)(wd->sta.bssid), 6);
    peerMacAddr[0] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET);
    peerMacAddr[1] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET + 2);
    peerMacAddr[2] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET + 4);
}
