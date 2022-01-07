
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef scalar_t__ RT_STATUS ;


 scalar_t__ RT_STATUS_SUCCESS ;
 scalar_t__ phy_ConfigMACWithHeaderFile (struct net_device*) ;

extern bool PHY_MACConfig8192S(struct net_device* dev)
{
 RT_STATUS rtStatus = RT_STATUS_SUCCESS;




 rtStatus = phy_ConfigMACWithHeaderFile(dev);
 return (rtStatus == RT_STATUS_SUCCESS) ? 1:0;

}
