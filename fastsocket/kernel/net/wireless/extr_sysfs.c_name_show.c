
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct wiphy wiphy; } ;


 char* dev_name (int *) ;
 TYPE_1__* dev_to_rdev (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev,
    struct device_attribute *attr,
    char *buf) {
 struct wiphy *wiphy = &dev_to_rdev(dev)->wiphy;
 return sprintf(buf, "%s\n", dev_name(&wiphy->dev));
}
