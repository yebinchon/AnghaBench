
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wiphy {int n_addresses; TYPE_1__* addresses; int * perm_addr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {struct wiphy wiphy; } ;
struct TYPE_3__ {int addr; } ;


 TYPE_2__* dev_to_rdev (struct device*) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static ssize_t addresses_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct wiphy *wiphy = &dev_to_rdev(dev)->wiphy;
 char *start = buf;
 int i;

 if (!wiphy->addresses)
  return sprintf(buf, "%pM\n", wiphy->perm_addr);

 for (i = 0; i < wiphy->n_addresses; i++)
  buf += sprintf(buf, "%pM\n", &wiphy->addresses[i].addr);

 return buf - start;
}
