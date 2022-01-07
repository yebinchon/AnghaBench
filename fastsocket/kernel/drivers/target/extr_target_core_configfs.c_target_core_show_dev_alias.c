
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dev_flags; char* dev_alias; } ;
typedef int ssize_t ;


 int DF_USING_ALIAS ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t target_core_show_dev_alias(void *p, char *page)
{
 struct se_device *dev = p;

 if (!(dev->dev_flags & DF_USING_ALIAS))
  return 0;

 return snprintf(page, PAGE_SIZE, "%s\n", dev->dev_alias);
}
