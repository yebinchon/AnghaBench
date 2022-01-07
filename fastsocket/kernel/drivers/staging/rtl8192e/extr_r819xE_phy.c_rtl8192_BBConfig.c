
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int RT_STATUS ;


 int RT_STATUS_SUCCESS ;
 int rtl8192_BB_Config_ParaFile (struct net_device*) ;
 int rtl8192_InitBBRFRegDef (struct net_device*) ;

RT_STATUS rtl8192_BBConfig(struct net_device* dev)
{
 RT_STATUS rtStatus = RT_STATUS_SUCCESS;
 rtl8192_InitBBRFRegDef(dev);


 rtStatus = rtl8192_BB_Config_ParaFile(dev);
 return rtStatus;
}
