
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct atm_dev {int link_rate; } ;
typedef int ssize_t ;





 int sprintf (char*,char*,int) ;
 struct atm_dev* to_atm_dev (struct device*) ;

__attribute__((used)) static ssize_t show_link_rate(struct device *cdev,
         struct device_attribute *attr, char *buf)
{
 char *pos = buf;
 struct atm_dev *adev = to_atm_dev(cdev);
 int link_rate;


 switch (adev->link_rate) {
  case 128:
   link_rate = 155520000;
   break;
  case 129:
   link_rate = 622080000;
   break;
  case 130:
   link_rate = 25600000;
   break;
  default:
   link_rate = adev->link_rate * 8 * 53;
 }
 pos += sprintf(pos, "%d\n", link_rate);

 return pos - buf;
}
