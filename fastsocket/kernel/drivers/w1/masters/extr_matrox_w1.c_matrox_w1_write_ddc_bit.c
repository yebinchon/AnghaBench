
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct matrox_device {int data_mask; } ;


 int MATROX_GET_CONTROL ;
 int MATROX_GET_DATA ;
 int matrox_w1_read_reg (struct matrox_device*,int ) ;
 int matrox_w1_write_reg (struct matrox_device*,int ,int) ;

__attribute__((used)) static void matrox_w1_write_ddc_bit(void *data, u8 bit)
{
 u8 ret;
 struct matrox_device *dev = data;

 if (bit)
  bit = 0;
 else
  bit = dev->data_mask;

 ret = matrox_w1_read_reg(dev, MATROX_GET_CONTROL);
 matrox_w1_write_reg(dev, MATROX_GET_CONTROL, ((ret & ~dev->data_mask) | bit));
 matrox_w1_write_reg(dev, MATROX_GET_DATA, 0x00);
}
