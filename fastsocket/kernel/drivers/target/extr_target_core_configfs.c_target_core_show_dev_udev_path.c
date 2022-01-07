
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dev_flags; char* udev_path; } ;
typedef int ssize_t ;


 int DF_USING_UDEV_PATH ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t target_core_show_dev_udev_path(void *p, char *page)
{
 struct se_device *dev = p;

 if (!(dev->dev_flags & DF_USING_UDEV_PATH))
  return 0;

 return snprintf(page, PAGE_SIZE, "%s\n", dev->udev_path);
}
