
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dummy; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
struct __fdb_entry {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EINVAL ;
 int br_fdb_fillbuf (struct net_bridge*,char*,size_t,int) ;
 struct net_bridge* to_bridge (struct device*) ;
 struct device* to_dev (struct kobject*) ;

__attribute__((used)) static ssize_t brforward_read(struct file *filp, struct kobject *kobj,
         struct bin_attribute *bin_attr,
         char *buf, loff_t off, size_t count)
{
 struct device *dev = to_dev(kobj);
 struct net_bridge *br = to_bridge(dev);
 int n;


 if (off % sizeof(struct __fdb_entry) != 0)
  return -EINVAL;

 n = br_fdb_fillbuf(br, buf,
       count / sizeof(struct __fdb_entry),
       off / sizeof(struct __fdb_entry));

 if (n > 0)
  n *= sizeof(struct __fdb_entry);

 return n;
}
