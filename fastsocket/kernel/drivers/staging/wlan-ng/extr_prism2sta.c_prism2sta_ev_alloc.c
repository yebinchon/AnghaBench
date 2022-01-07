
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int netdev; } ;
typedef TYPE_1__ wlandevice_t ;


 int netif_wake_queue (int ) ;

void prism2sta_ev_alloc(wlandevice_t *wlandev)
{
 netif_wake_queue(wlandev->netdev);
 return;
}
