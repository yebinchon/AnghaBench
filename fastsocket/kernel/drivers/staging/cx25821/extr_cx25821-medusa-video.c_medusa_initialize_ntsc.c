
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int lock; int * i2c_bus; } ;


 scalar_t__ BYP_AB_CTRL ;
 scalar_t__ DENC_A_REG_1 ;
 scalar_t__ DENC_A_REG_2 ;
 scalar_t__ DENC_A_REG_3 ;
 scalar_t__ DENC_A_REG_4 ;
 scalar_t__ DENC_A_REG_5 ;
 scalar_t__ DENC_A_REG_6 ;
 scalar_t__ DENC_A_REG_7 ;
 scalar_t__ DFE_CTRL1 ;
 scalar_t__ HORIZ_TIM_CTRL ;
 scalar_t__ HSCALE_CTRL ;
 int MAX_DECODERS ;
 int MAX_ENCODERS ;
 scalar_t__ MISC_TIM_CTRL ;
 scalar_t__ MODE_CTRL ;
 scalar_t__ OUT_CTRL1 ;
 scalar_t__ OUT_CTRL_NS ;
 scalar_t__ SC_STEP_SIZE ;
 scalar_t__ VERT_TIM_CTRL ;
 scalar_t__ VSCALE_CTRL ;
 int clearBitAtPos (int,int) ;
 int cx25821_i2c_read (int *,scalar_t__,int*) ;
 int cx25821_i2c_write (int *,scalar_t__,int) ;
 int medusa_enable_bluefield_output (struct cx25821_dev*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int setBitAtPos (int,int) ;

__attribute__((used)) static int medusa_initialize_ntsc(struct cx25821_dev *dev)
{
 int ret_val = 0;
 int i = 0;
 u32 value = 0;
 u32 tmp = 0;

 mutex_lock(&dev->lock);

 for (i = 0; i < MAX_DECODERS; i++) {

  value =
      cx25821_i2c_read(&dev->i2c_bus[0], MODE_CTRL + (0x200 * i),
         &tmp);
  value &= 0xFFFFFFF0;
  value |= 0x10001;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0], MODE_CTRL + (0x200 * i),
          value);


  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         HORIZ_TIM_CTRL + (0x200 * i), &tmp);
  value &= 0x00C00C00;
  value |= 0x612D0074;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          HORIZ_TIM_CTRL + (0x200 * i), value);

  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         VERT_TIM_CTRL + (0x200 * i), &tmp);
  value &= 0x00C00C00;
  value |= 0x1C1E001A;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          VERT_TIM_CTRL + (0x200 * i), value);


  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          SC_STEP_SIZE + (0x200 * i), 0x43E00000);


  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         OUT_CTRL_NS + (0x200 * i), &tmp);
  value &= 0xFFFBFFFF;
  value |= 0x00040000;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          OUT_CTRL_NS + (0x200 * i), value);


  value =
      cx25821_i2c_read(&dev->i2c_bus[0], OUT_CTRL1 + (0x200 * i),
         &tmp);
  value &= 0xFFFBFFFF;
  value |= 0x00040000;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0], OUT_CTRL1 + (0x200 * i),
          value);




  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         MISC_TIM_CTRL + (0x200 * i), &tmp);
  value = setBitAtPos(value, 14);
  value = clearBitAtPos(value, 15);
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          MISC_TIM_CTRL + (0x200 * i), value);


  value =
      cx25821_i2c_read(&dev->i2c_bus[0], DFE_CTRL1 + (0x200 * i),
         &tmp);
  value = clearBitAtPos(value, 29);
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0], DFE_CTRL1 + (0x200 * i),
          value);


  medusa_enable_bluefield_output(dev, i, 1);
 }

 for (i = 0; i < MAX_ENCODERS; i++) {

  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         DENC_A_REG_1 + (0x100 * i), &tmp);
  value &= 0xF000FC00;
  value |= 0x06B402D0;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_1 + (0x100 * i), value);


  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         DENC_A_REG_2 + (0x100 * i), &tmp);
  value &= 0xFF000000;
  value |= 0x007E9054;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_2 + (0x100 * i), value);

  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         DENC_A_REG_3 + (0x100 * i), &tmp);
  value &= 0xFC00FE00;
  value |= 0x00EC00F0;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_3 + (0x100 * i), value);


  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         DENC_A_REG_4 + (0x100 * i), &tmp);
  value &= 0x00FCFFFF;
  value |= 0x13020000;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_4 + (0x100 * i), value);

  value =
      cx25821_i2c_read(&dev->i2c_bus[0],
         DENC_A_REG_5 + (0x100 * i), &tmp);
  value &= 0xFFFF0000;
  value |= 0x0000E575;
  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_5 + (0x100 * i), value);

  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_6 + (0x100 * i), 0x009A89C1);


  ret_val =
      cx25821_i2c_write(&dev->i2c_bus[0],
          DENC_A_REG_7 + (0x100 * i), 0x21F07C1F);
 }


 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], HSCALE_CTRL, 0x0);
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], VSCALE_CTRL, 0x0);


 value = cx25821_i2c_read(&dev->i2c_bus[0], BYP_AB_CTRL, &tmp);
 value |= 0x00080200;
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], BYP_AB_CTRL, value);

 mutex_unlock(&dev->lock);

 return ret_val;
}
