
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct lis3l02dq_state {TYPE_2__* us; TYPE_1__* indio_dev; } ;
struct TYPE_4__ {int dev; int mode; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 scalar_t__ LIS3L02DQ_DEFAULT_CTRL1 ;
 scalar_t__ LIS3L02DQ_DEFAULT_CTRL2 ;
 int LIS3L02DQ_REG_CTRL_1_ADDR ;
 int LIS3L02DQ_REG_CTRL_2_ADDR ;
 int LIS3L02DQ_REG_WAKE_UP_CFG_ADDR ;
 scalar_t__ LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC ;
 int SPI_MODE_3 ;
 int dev_err (int *,char*) ;
 int lis3l02dq_spi_read_reg_8 (int *,int ,scalar_t__*) ;
 int lis3l02dq_spi_write_reg_8 (int *,int ,scalar_t__*) ;
 int spi_setup (TYPE_2__*) ;

__attribute__((used)) static int lis3l02dq_initial_setup(struct lis3l02dq_state *st)
{
 int ret;
 u8 val, valtest;

 st->us->mode = SPI_MODE_3;

 spi_setup(st->us);

 val = LIS3L02DQ_DEFAULT_CTRL1;

 ret = lis3l02dq_spi_write_reg_8(&st->indio_dev->dev,
     LIS3L02DQ_REG_CTRL_1_ADDR,
     &val);
 if (ret) {
  dev_err(&st->us->dev, "problem with setup control register 1");
  goto err_ret;
 }

 ret = lis3l02dq_spi_write_reg_8(&st->indio_dev->dev,
     LIS3L02DQ_REG_CTRL_1_ADDR,
     &val);
 if (ret) {
  dev_err(&st->us->dev, "problem with setup control register 1");
  goto err_ret;
 }



 ret = lis3l02dq_spi_read_reg_8(&st->indio_dev->dev,
           LIS3L02DQ_REG_CTRL_1_ADDR,
           &valtest);
 if (ret || (valtest != val)) {
  dev_err(&st->indio_dev->dev, "device not playing ball");
  ret = -EINVAL;
  goto err_ret;
 }

 val = LIS3L02DQ_DEFAULT_CTRL2;
 ret = lis3l02dq_spi_write_reg_8(&st->indio_dev->dev,
     LIS3L02DQ_REG_CTRL_2_ADDR,
     &val);
 if (ret) {
  dev_err(&st->us->dev, "problem with setup control register 2");
  goto err_ret;
 }

 val = LIS3L02DQ_REG_WAKE_UP_CFG_LATCH_SRC;
 ret = lis3l02dq_spi_write_reg_8(&st->indio_dev->dev,
     LIS3L02DQ_REG_WAKE_UP_CFG_ADDR,
     &val);
 if (ret)
  dev_err(&st->us->dev, "problem with interrupt cfg register");
err_ret:

 return ret;
}
