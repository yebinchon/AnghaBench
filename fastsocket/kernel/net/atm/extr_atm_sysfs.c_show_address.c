
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {int* esi; } ;
typedef int ssize_t ;


 int ESI_LEN ;
 int sprintf (char*,char*,int) ;
 struct atm_dev* to_atm_dev (struct device*) ;

__attribute__((used)) static ssize_t show_address(struct device *cdev,
       struct device_attribute *attr, char *buf)
{
 char *pos = buf;
 struct atm_dev *adev = to_atm_dev(cdev);
 int i;

 for (i = 0; i < (ESI_LEN - 1); i++)
  pos += sprintf(pos, "%02x:", adev->esi[i]);
 pos += sprintf(pos, "%02x\n", adev->esi[i]);

 return pos - buf;
}
