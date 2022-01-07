
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {scalar_t__ uart_mode; } ;


 struct mpu_config* dev_conf ;
 scalar_t__ mpu_cmd (int,int,int ) ;

__attribute__((used)) static int mpu401_prefix_cmd(int dev, unsigned char status)
{
 struct mpu_config *devc = &dev_conf[dev];

 if (devc->uart_mode)
  return 1;

 if (status < 0xf0)
 {
  if (mpu_cmd(dev, 0xD0, 0) < 0)
   return 0;
  return 1;
 }
 switch (status)
 {
  case 0xF0:
   if (mpu_cmd(dev, 0xDF, 0) < 0)
    return 0;
   return 1;

  default:
   return 0;
 }
}
