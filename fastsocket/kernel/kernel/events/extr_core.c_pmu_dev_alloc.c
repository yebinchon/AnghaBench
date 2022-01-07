
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct pmu {TYPE_1__* dev; int name; int attr_groups; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int release; int * bus; int groups; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (TYPE_1__*,struct pmu*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int pmu_bus ;
 int pmu_dev_release ;
 int put_device (TYPE_1__*) ;

__attribute__((used)) static int pmu_dev_alloc(struct pmu *pmu)
{
 int ret = -ENOMEM;

 pmu->dev = kzalloc(sizeof(struct device), GFP_KERNEL);
 if (!pmu->dev)
  goto out;

 pmu->dev->groups = pmu->attr_groups;
 device_initialize(pmu->dev);
 ret = dev_set_name(pmu->dev, "%s", pmu->name);
 if (ret)
  goto free_dev;

 dev_set_drvdata(pmu->dev, pmu);
 pmu->dev->bus = &pmu_bus;
 pmu->dev->release = pmu_dev_release;
 ret = device_add(pmu->dev);
 if (ret)
  goto free_dev;

out:
 return ret;

free_dev:
 put_device(pmu->dev);
 goto out;
}
