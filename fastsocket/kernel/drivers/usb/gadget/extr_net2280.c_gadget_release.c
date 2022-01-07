
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2280 {int dummy; } ;
struct device {int dummy; } ;


 struct net2280* dev_get_drvdata (struct device*) ;
 int kfree (struct net2280*) ;

__attribute__((used)) static void gadget_release (struct device *_dev)
{
 struct net2280 *dev = dev_get_drvdata (_dev);

 kfree (dev);
}
