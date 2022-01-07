
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int * name; int * netdev_ops; int priv_flags; int * wireless_handlers; } ;
struct TYPE_3__ {scalar_t__ OpMode; } ;
typedef TYPE_1__* PRTMP_ADAPTER ;
typedef int NDIS_STATUS ;
typedef int INT ;
typedef int CHAR ;


 int DBGPRINT (int ,char*) ;
 int IFNAMSIZ ;
 int INT_MAIN ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_SUCCESS ;
 scalar_t__ OPMODE_STA ;
 int RT_DEBUG_ERROR ;
 struct net_device* dev_get_by_name (int ,int *) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int rt2860_netdev_ops ;
 int rt28xx_iw_handler_def ;
 int sprintf (int *,char*,int) ;

__attribute__((used)) static NDIS_STATUS rt_ieee80211_if_setup(struct net_device *dev, PRTMP_ADAPTER pAd)
{
 NDIS_STATUS Status;
 INT i=0;
 CHAR slot_name[IFNAMSIZ];
 struct net_device *device;

 if (pAd->OpMode == OPMODE_STA)
 {
  dev->wireless_handlers = &rt28xx_iw_handler_def;
 }

 dev->priv_flags = INT_MAIN;
 dev->netdev_ops = &rt2860_netdev_ops;

 for (i = 0; i < 8; i++)
 {
  sprintf(slot_name, "wlan%d", i);

  device = dev_get_by_name(dev_net(dev), slot_name);
  if (device != ((void*)0))
   dev_put(device);

  if (device == ((void*)0))
   break;
 }

 if(i == 8)
 {
  DBGPRINT(RT_DEBUG_ERROR, ("No available slot name\n"));
  Status = NDIS_STATUS_FAILURE;
 }
 else
 {
  sprintf(dev->name, "wlan%d", i);
  Status = NDIS_STATUS_SUCCESS;
 }

 return Status;

}
