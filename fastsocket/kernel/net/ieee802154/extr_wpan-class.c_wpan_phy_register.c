
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct wpan_phy {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int device_add (TYPE_1__*) ;

int wpan_phy_register(struct device *parent, struct wpan_phy *phy)
{
 phy->dev.parent = parent;

 return device_add(&phy->dev);
}
