
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmd; int nr_args; int nr_returns; int* data; } ;
typedef TYPE_1__ mpu_command_rec ;


 int mpu401_command (int,TYPE_1__*) ;

__attribute__((used)) static int mpu_cmd(int dev, int cmd, int data)
{
 int ret;

 static mpu_command_rec rec;

 rec.cmd = cmd & 0xff;
 rec.nr_args = ((cmd & 0xf0) == 0xE0);
 rec.nr_returns = ((cmd & 0xf0) == 0xA0);
 rec.data[0] = data & 0xff;

 if ((ret = mpu401_command(dev, &rec)) < 0)
  return ret;
 return (unsigned char) rec.data[0];
}
