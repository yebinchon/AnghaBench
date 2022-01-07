
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cuse_conn {int fc; } ;
typedef size_t ssize_t ;


 struct cuse_conn* dev_get_drvdata (struct device*) ;
 int fuse_abort_conn (int *) ;

__attribute__((used)) static ssize_t cuse_class_abort_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct cuse_conn *cc = dev_get_drvdata(dev);

 fuse_abort_conn(&cc->fc);
 return count;
}
