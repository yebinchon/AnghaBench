
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int unit_attention_data; scalar_t__ prevent_medium_removal; } ;
struct fsg_dev {int filesem; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int LDBG (struct lun*,char*) ;
 int SS_MEDIUM_NOT_PRESENT ;
 int SS_NOT_READY_TO_READY_TRANSITION ;
 scalar_t__ backing_file_is_open (struct lun*) ;
 int close_backing_file (struct lun*) ;
 struct fsg_dev* dev_get_drvdata (struct device*) ;
 struct lun* dev_to_lun (struct device*) ;
 int down_write (int *) ;
 int open_backing_file (struct lun*,char const*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t store_file(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct lun *curlun = dev_to_lun(dev);
 struct fsg_dev *fsg = dev_get_drvdata(dev);
 int rc = 0;

 if (curlun->prevent_medium_removal && backing_file_is_open(curlun)) {
  LDBG(curlun, "eject attempt prevented\n");
  return -EBUSY;
 }


 if (count > 0 && buf[count-1] == '\n')
  ((char *) buf)[count-1] = 0;


 down_write(&fsg->filesem);
 if (backing_file_is_open(curlun)) {
  close_backing_file(curlun);
  curlun->unit_attention_data = SS_MEDIUM_NOT_PRESENT;
 }


 if (count > 0 && buf[0]) {
  rc = open_backing_file(curlun, buf);
  if (rc == 0)
   curlun->unit_attention_data =
     SS_NOT_READY_TO_READY_TRANSITION;
 }
 up_write(&fsg->filesem);
 return (rc < 0 ? rc : count);
}
