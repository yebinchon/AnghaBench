
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 void* dev_get_drvdata (struct device*) ;
 int kfree (void*) ;

__attribute__((used)) static void bt_link_release(struct device *dev)
{
 void *data = dev_get_drvdata(dev);
 kfree(data);
}
