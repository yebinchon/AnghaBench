
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct region_devres {int member_2; int member_1; struct resource* member_0; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 int WARN_ON (int ) ;
 int __release_region (struct resource*,int ,int ) ;
 int devm_region_match ;
 int devm_region_release ;
 int devres_destroy (struct device*,int ,int ,struct region_devres*) ;

void __devm_release_region(struct device *dev, struct resource *parent,
      resource_size_t start, resource_size_t n)
{
 struct region_devres match_data = { parent, start, n };

 __release_region(parent, start, n);
 WARN_ON(devres_destroy(dev, devm_region_release, devm_region_match,
          &match_data));
}
