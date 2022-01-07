
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int lock; int * i2c_bus; } ;


 int DISP_AB_CNT ;
 int DISP_CD_CNT ;
 int DISP_EF_CNT ;
 int DISP_GH_CNT ;
 int VDEC_A ;






 int* _display_field_cnt ;
 int cx25821_i2c_read (int *,int,int*) ;
 int cx25821_i2c_write (int *,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void medusa_set_decoderduration(struct cx25821_dev *dev, int decoder,
           int duration)
{
 int ret_val = 0;
 u32 fld_cnt = 0;
 u32 tmp = 0;
 u32 disp_cnt_reg = DISP_AB_CNT;

 mutex_lock(&dev->lock);


 if (decoder < VDEC_A && decoder > 128) {
  mutex_unlock(&dev->lock);
  return;
 }

 switch (decoder) {
 default:
  break;
 case 133:
 case 132:
  disp_cnt_reg = DISP_CD_CNT;
  break;
 case 131:
 case 130:
  disp_cnt_reg = DISP_EF_CNT;
  break;
 case 129:
 case 128:
  disp_cnt_reg = DISP_GH_CNT;
  break;
 }

 _display_field_cnt[decoder] = duration;


 fld_cnt = cx25821_i2c_read(&dev->i2c_bus[0], disp_cnt_reg, &tmp);

 if (!(decoder % 2))
 {
  fld_cnt &= 0xFFFF0000;
  fld_cnt |= duration;
 } else {
  fld_cnt &= 0x0000FFFF;
  fld_cnt |= ((u32) duration) << 16;
 }

 ret_val = cx25821_i2c_write(&dev->i2c_bus[0], disp_cnt_reg, fld_cnt);

 mutex_unlock(&dev->lock);
}
