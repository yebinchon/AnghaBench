
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct region_devres {int n; int start; int parent; } ;
struct device {int dummy; } ;


 int __release_region (int ,int ,int ) ;

__attribute__((used)) static void devm_region_release(struct device *dev, void *res)
{
 struct region_devres *this = res;

 __release_region(this->parent, this->start, this->n);
}
