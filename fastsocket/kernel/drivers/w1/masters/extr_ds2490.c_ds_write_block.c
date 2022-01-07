
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds_status {int dummy; } ;
struct ds_device {int spu_bit; int spu_sleep; } ;


 int COMM_BLOCK_IO ;
 int COMM_IM ;
 int ds_recv_data (struct ds_device*,int *,int) ;
 int ds_send_control (struct ds_device*,int,int) ;
 int ds_send_data (struct ds_device*,int *,int) ;
 int ds_wait_status (struct ds_device*,struct ds_status*) ;
 int msleep (int ) ;

__attribute__((used)) static int ds_write_block(struct ds_device *dev, u8 *buf, int len)
{
 int err;
 struct ds_status st;

 err = ds_send_data(dev, buf, len);
 if (err < 0)
  return err;

 err = ds_send_control(dev, COMM_BLOCK_IO | COMM_IM | dev->spu_bit, len);
 if (err)
  return err;

 if (dev->spu_bit)
  msleep(dev->spu_sleep);

 ds_wait_status(dev, &st);

 err = ds_recv_data(dev, buf, len);
 if (err < 0)
  return err;

 return !(err == len);
}
