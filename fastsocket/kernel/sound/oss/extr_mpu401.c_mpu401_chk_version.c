
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu_config {int version; int revision; } ;


 int mpu_cmd (int,int,int ) ;

__attribute__((used)) static void mpu401_chk_version(int n, struct mpu_config *devc)
{
 int tmp;

 devc->version = devc->revision = 0;

 tmp = mpu_cmd(n, 0xAC, 0);
 if (tmp < 0)
  return;
 if ((tmp & 0xf0) > 0x20)
  return;
 devc->version = tmp;

 if ((tmp = mpu_cmd(n, 0xAD, 0)) < 0) {
  devc->version = 0;
  return;
 }
 devc->revision = tmp;
}
