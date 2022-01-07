
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umc_dev {int cap_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct umc_dev* to_umc_dev (struct device*) ;

__attribute__((used)) static ssize_t capability_id_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct umc_dev *umc = to_umc_dev(dev);

 return sprintf(buf, "0x%02x\n", umc->cap_id);
}
