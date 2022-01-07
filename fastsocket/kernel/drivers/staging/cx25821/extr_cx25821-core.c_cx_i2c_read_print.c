
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int * i2c_bus; } ;


 int cx25821_i2c_read (int *,int ,int*) ;

void cx_i2c_read_print(struct cx25821_dev *dev, u32 reg, const char *reg_string)
{
 int tmp = 0;
 u32 value = 0;

 value = cx25821_i2c_read(&dev->i2c_bus[0], reg, &tmp);
}
