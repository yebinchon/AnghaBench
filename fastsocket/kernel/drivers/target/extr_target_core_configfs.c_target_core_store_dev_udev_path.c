
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cg_item; } ;
struct se_hba {TYPE_1__ hba_group; } ;
struct TYPE_4__ {int cg_item; } ;
struct se_device {char* udev_path; TYPE_2__ dev_group; int dev_flags; struct se_hba* se_hba; } ;
typedef int ssize_t ;


 int DF_USING_UDEV_PATH ;
 int EINVAL ;
 int SE_UDEV_PATH_LEN ;
 int config_item_name (int *) ;
 int pr_debug (char*,int ,int ,char*) ;
 int pr_err (char*,int,int) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static ssize_t target_core_store_dev_udev_path(
 void *p,
 const char *page,
 size_t count)
{
 struct se_device *dev = p;
 struct se_hba *hba = dev->se_hba;
 ssize_t read_bytes;

 if (count > (SE_UDEV_PATH_LEN-1)) {
  pr_err("udev_path count: %d exceeds"
   " SE_UDEV_PATH_LEN-1: %u\n", (int)count,
   SE_UDEV_PATH_LEN-1);
  return -EINVAL;
 }

 read_bytes = snprintf(&dev->udev_path[0], SE_UDEV_PATH_LEN,
   "%s", page);
 if (!read_bytes)
  return -EINVAL;
 if (dev->udev_path[read_bytes - 1] == '\n')
  dev->udev_path[read_bytes - 1] = '\0';

 dev->dev_flags |= DF_USING_UDEV_PATH;

 pr_debug("Target_Core_ConfigFS: %s/%s set udev_path: %s\n",
  config_item_name(&hba->hba_group.cg_item),
  config_item_name(&dev->dev_group.cg_item),
  dev->udev_path);

 return read_bytes;
}
