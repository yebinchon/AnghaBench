
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int wpan_phy_match(struct device *dev, void *data)
{
 return !strcmp(dev_name(dev), (const char *)data);
}
