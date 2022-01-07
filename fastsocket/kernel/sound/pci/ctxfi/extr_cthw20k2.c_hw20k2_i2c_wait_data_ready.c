
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw {int dummy; } ;


 unsigned int DATA_READY ;
 int I2C_IF_STATUS ;
 unsigned int hw_read_20kx (struct hw*,int ) ;

__attribute__((used)) static int hw20k2_i2c_wait_data_ready(struct hw *hw)
{
 int i = 0x400000;
 unsigned int ret;

 do {
  ret = hw_read_20kx(hw, I2C_IF_STATUS);
 } while ((!(ret & DATA_READY)) && --i);

 return i;
}
