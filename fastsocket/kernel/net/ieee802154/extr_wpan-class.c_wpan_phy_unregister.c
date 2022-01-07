
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dev; } ;


 int device_del (int *) ;

void wpan_phy_unregister(struct wpan_phy *phy)
{
 device_del(&phy->dev);
}
