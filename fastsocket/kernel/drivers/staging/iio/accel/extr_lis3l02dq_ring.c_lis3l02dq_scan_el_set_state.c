
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_scan_el {int label; } ;
struct iio_dev {int dev; } ;


 int EINVAL ;
 int LIS3L02DQ_REG_CTRL_1_ADDR ;
 int LIS3L02DQ_REG_CTRL_1_AXES_X_ENABLE ;
 int LIS3L02DQ_REG_CTRL_1_AXES_Y_ENABLE ;
 int LIS3L02DQ_REG_CTRL_1_AXES_Z_ENABLE ;



 int lis3l02dq_spi_read_reg_8 (int *,int ,int*) ;
 int lis3l02dq_spi_write_reg_8 (int *,int ,int*) ;

__attribute__((used)) static int lis3l02dq_scan_el_set_state(struct iio_scan_el *scan_el,
           struct iio_dev *indio_dev,
           bool state)
{
 u8 t, mask;
 int ret;

 ret = lis3l02dq_spi_read_reg_8(&indio_dev->dev,
           LIS3L02DQ_REG_CTRL_1_ADDR,
           &t);
 if (ret)
  goto error_ret;
 switch (scan_el->label) {
 case 130:
  mask = LIS3L02DQ_REG_CTRL_1_AXES_X_ENABLE;
  break;
 case 129:
  mask = LIS3L02DQ_REG_CTRL_1_AXES_Y_ENABLE;
  break;
 case 128:
  mask = LIS3L02DQ_REG_CTRL_1_AXES_Z_ENABLE;
  break;
 default:
  ret = -EINVAL;
  goto error_ret;
 }

 if (!(mask & t) == state) {
  if (state)
   t |= mask;
  else
   t &= ~mask;
  ret = lis3l02dq_spi_write_reg_8(&indio_dev->dev,
      LIS3L02DQ_REG_CTRL_1_ADDR,
      &t);
 }
error_ret:
 return ret;

}
