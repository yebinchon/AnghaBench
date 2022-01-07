
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EPERM ;
 unsigned long long PAGE_SHIFT ;
 int balloon_set_new_target (unsigned long long) ;
 int capable (int ) ;
 int simple_strtoull (char const*,char**,int ) ;

__attribute__((used)) static ssize_t store_target_kb(struct sys_device *dev,
          struct sysdev_attribute *attr,
          const char *buf,
          size_t count)
{
 char *endchar;
 unsigned long long target_bytes;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 target_bytes = simple_strtoull(buf, &endchar, 0) * 1024;

 balloon_set_new_target(target_bytes >> PAGE_SHIFT);

 return count;
}
