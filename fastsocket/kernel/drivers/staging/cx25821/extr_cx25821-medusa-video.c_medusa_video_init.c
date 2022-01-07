
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int _max_num_decoders; int lock; int * i2c_bus; } ;


 int AFE_AB_DIAG_CTRL ;
 int BYP_AB_CTRL ;
 int DENC_AB_CTRL ;
 int EINVAL ;
 int MAX_DECODERS ;
 int MON_A_CTRL ;
 int PIN_OE_CTRL ;
 int * _display_field_cnt ;
 int _num_decoders ;
 int cx25821_i2c_read (int *,int ,int*) ;
 int cx25821_i2c_write (int *,int ,int) ;
 int medusa_set_decoderduration (struct cx25821_dev*,int,int ) ;
 int medusa_set_videostandard (struct cx25821_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int medusa_video_init(struct cx25821_dev *dev)
{
 u32 value = 0, tmp = 0;
 int ret_val = 0;
 int i = 0;

 mutex_lock(&dev->lock);

 _num_decoders = dev->_max_num_decoders;


 value = cx25821_i2c_read(&dev->i2c_bus[0], MON_A_CTRL, &tmp);
 value &= 0xFFFFF0FF;
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], MON_A_CTRL, value);

 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 value = cx25821_i2c_read(&dev->i2c_bus[0], MON_A_CTRL, &tmp);
 value &= 0xFFFFFFDF;
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], MON_A_CTRL, value);

 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 mutex_unlock(&dev->lock);

 for (i = 0; i < _num_decoders; i++) {
  medusa_set_decoderduration(dev, i, _display_field_cnt[i]);
 }

 mutex_lock(&dev->lock);


 value = cx25821_i2c_read(&dev->i2c_bus[0], DENC_AB_CTRL, &tmp);
 value &= 0xFF70FF70;
 value |= 0x00090008;
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], DENC_AB_CTRL, value);

 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 value = cx25821_i2c_read(&dev->i2c_bus[0], BYP_AB_CTRL, &tmp);
 value |= 0x00040100;
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], BYP_AB_CTRL, value);

 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 value = cx25821_i2c_read(&dev->i2c_bus[0], AFE_AB_DIAG_CTRL, &tmp);
 value &= 0x83FFFFFF;
 ret_val =
     cx25821_i2c_write(&dev->i2c_bus[0], AFE_AB_DIAG_CTRL,
         value | 0x10000000);

 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 value = cx25821_i2c_read(&dev->i2c_bus[0], PIN_OE_CTRL, &tmp);
 value &= 0xFEF0FE00;
 if (_num_decoders == MAX_DECODERS) {


  value |= 0x010001F8;
 } else {
  value |= 0x010F0108;
 }

 value |= 7;
 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], PIN_OE_CTRL, value);
 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 mutex_unlock(&dev->lock);

 ret_val = medusa_set_videostandard(dev);

 if (ret_val < 0) {
  mutex_unlock(&dev->lock);
  return -EINVAL;
 }

 return 1;
}
