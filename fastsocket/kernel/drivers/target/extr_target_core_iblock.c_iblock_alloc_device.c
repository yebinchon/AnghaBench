
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_hba {int dummy; } ;
struct se_device {int dummy; } ;
struct iblock_dev {struct se_device dev; } ;


 int GFP_KERNEL ;
 struct iblock_dev* kzalloc (int,int ) ;
 int pr_debug (char*,char const*) ;
 int pr_err (char*) ;

__attribute__((used)) static struct se_device *iblock_alloc_device(struct se_hba *hba, const char *name)
{
 struct iblock_dev *ib_dev = ((void*)0);

 ib_dev = kzalloc(sizeof(struct iblock_dev), GFP_KERNEL);
 if (!ib_dev) {
  pr_err("Unable to allocate struct iblock_dev\n");
  return ((void*)0);
 }

 pr_debug( "IBLOCK: Allocated ib_dev for %s\n", name);

 return &ib_dev->dev;
}
