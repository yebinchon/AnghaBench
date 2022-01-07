
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lun {TYPE_1__* filp; } ;
struct fsg_dev {int filesem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int f_path; } ;


 scalar_t__ IS_ERR (char*) ;
 scalar_t__ PAGE_SIZE ;
 size_t PTR_ERR (char*) ;
 scalar_t__ backing_file_is_open (struct lun*) ;
 char* d_path (int *,char*,scalar_t__) ;
 struct fsg_dev* dev_get_drvdata (struct device*) ;
 struct lun* dev_to_lun (struct device*) ;
 int down_read (int *) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t show_file(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct lun *curlun = dev_to_lun(dev);
 struct fsg_dev *fsg = dev_get_drvdata(dev);
 char *p;
 ssize_t rc;

 down_read(&fsg->filesem);
 if (backing_file_is_open(curlun)) {
  p = d_path(&curlun->filp->f_path, buf, PAGE_SIZE - 1);
  if (IS_ERR(p))
   rc = PTR_ERR(p);
  else {
   rc = strlen(p);
   memmove(buf, p, rc);
   buf[rc] = '\n';
   buf[++rc] = 0;
  }
 } else {
  *buf = 0;
  rc = 0;
 }
 up_read(&fsg->filesem);
 return rc;
}
