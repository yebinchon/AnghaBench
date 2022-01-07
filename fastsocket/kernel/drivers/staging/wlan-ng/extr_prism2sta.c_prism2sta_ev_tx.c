
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tx_packets; } ;
struct TYPE_5__ {TYPE_1__ linux_stats; } ;
typedef TYPE_2__ wlandevice_t ;
typedef int u16 ;


 int pr_debug (char*,int ) ;

void prism2sta_ev_tx(wlandevice_t *wlandev, u16 status)
{
 pr_debug("Tx Complete, status=0x%04x\n", status);

 wlandev->linux_stats.tx_packets++;
 return;
}
