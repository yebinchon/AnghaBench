
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int netdev; } ;
typedef TYPE_1__ wlandevice_t ;


 int register_netdev (int ) ;

int register_wlandev(wlandevice_t *wlandev)
{
 int i = 0;

 i = register_netdev(wlandev->netdev);
 if (i)
  return i;

 return 0;
}
