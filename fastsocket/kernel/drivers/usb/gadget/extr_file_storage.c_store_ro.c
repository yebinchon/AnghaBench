
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int ro; } ;
struct fsg_dev {int filesem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 int LDBG (struct lun*,char*,...) ;
 scalar_t__ backing_file_is_open (struct lun*) ;
 struct fsg_dev* dev_get_drvdata (struct device*) ;
 struct lun* dev_to_lun (struct device*) ;
 int down_read (int *) ;
 int sscanf (char const*,char*,int*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t store_ro(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 ssize_t rc = count;
 struct lun *curlun = dev_to_lun(dev);
 struct fsg_dev *fsg = dev_get_drvdata(dev);
 int i;

 if (sscanf(buf, "%d", &i) != 1)
  return -EINVAL;



 down_read(&fsg->filesem);
 if (backing_file_is_open(curlun)) {
  LDBG(curlun, "read-only status change prevented\n");
  rc = -EBUSY;
 } else {
  curlun->ro = !!i;
  LDBG(curlun, "read-only status set to %d\n", curlun->ro);
 }
 up_read(&fsg->filesem);
 return rc;
}
