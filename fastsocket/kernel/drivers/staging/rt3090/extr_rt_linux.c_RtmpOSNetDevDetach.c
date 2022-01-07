
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PNET_DEV ;


 int unregister_netdev (int ) ;

void RtmpOSNetDevDetach(PNET_DEV pNetDev)
{
 unregister_netdev(pNetDev);
}
