
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct device* parent; int groups; } ;
struct uwb_dev {TYPE_1__* rc; struct device dev; } ;
struct TYPE_2__ {struct uwb_dev uwb_dev; } ;


 int dev_set_drvdata (struct device*,struct uwb_dev*) ;
 int device_add (struct device*) ;
 int groups ;

__attribute__((used)) static int __uwb_dev_sys_add(struct uwb_dev *uwb_dev, struct device *parent_dev)
{
 struct device *dev;

 dev = &uwb_dev->dev;


 if (&uwb_dev->rc->uwb_dev != uwb_dev)
  dev->groups = groups;
 dev->parent = parent_dev;
 dev_set_drvdata(dev, uwb_dev);

 return device_add(dev);
}
