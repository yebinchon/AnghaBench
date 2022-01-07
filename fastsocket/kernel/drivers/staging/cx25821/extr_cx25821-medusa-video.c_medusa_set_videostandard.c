
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int tvnorm; int * i2c_bus; } ;


 int DENC_A_REG_4 ;
 int DENC_B_REG_4 ;
 int STATUS_SUCCESS ;
 int V4L2_STD_PAL_BG ;
 int V4L2_STD_PAL_DK ;
 int cx25821_i2c_read (int *,int ,int *) ;
 int cx25821_i2c_write (int *,int ,int ) ;
 int medusa_initialize_ntsc (struct cx25821_dev*) ;
 int medusa_initialize_pal (struct cx25821_dev*) ;
 int setBitAtPos (int ,int) ;

int medusa_set_videostandard(struct cx25821_dev *dev)
{
 int status = STATUS_SUCCESS;
 u32 value = 0, tmp = 0;

 if (dev->tvnorm & V4L2_STD_PAL_BG || dev->tvnorm & V4L2_STD_PAL_DK) {
  status = medusa_initialize_pal(dev);
 } else {
  status = medusa_initialize_ntsc(dev);
 }


 value = cx25821_i2c_read(&dev->i2c_bus[0], DENC_A_REG_4, &tmp);
 value = setBitAtPos(value, 4);
 status = cx25821_i2c_write(&dev->i2c_bus[0], DENC_A_REG_4, value);


 value = cx25821_i2c_read(&dev->i2c_bus[0], DENC_B_REG_4, &tmp);
 value = setBitAtPos(value, 4);
 status = cx25821_i2c_write(&dev->i2c_bus[0], DENC_B_REG_4, value);

 return status;
}
