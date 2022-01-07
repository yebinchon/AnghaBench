
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int pr_err (char*) ;
 char* strstr (char const*,char*) ;
 int target_configure_device (struct se_device*) ;

__attribute__((used)) static ssize_t target_core_store_dev_enable(
 void *p,
 const char *page,
 size_t count)
{
 struct se_device *dev = p;
 char *ptr;
 int ret;

 ptr = strstr(page, "1");
 if (!ptr) {
  pr_err("For dev_enable ops, only valid value"
    " is \"1\"\n");
  return -EINVAL;
 }

 ret = target_configure_device(dev);
 if (ret)
  return ret;
 return count;
}
