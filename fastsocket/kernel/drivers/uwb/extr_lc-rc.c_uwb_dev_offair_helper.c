
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev {int rc; } ;
struct device {int dummy; } ;


 int __uwb_dev_offair (struct uwb_dev*,int ) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;

__attribute__((used)) static int uwb_dev_offair_helper(struct device *dev, void *priv)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);

 return __uwb_dev_offair(uwb_dev, uwb_dev->rc);
}
