
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int bpse; int lock; } ;
struct iio_ring_buffer {int dummy; } ;
struct iio_hw_ring_buffer {struct iio_dev* private; } ;
struct iio_dev {struct sca3000_state* dev_data; } ;


 int SCA3000_REG_ADDR_BUF_COUNT ;
 int SCA3000_REG_ADDR_RING_OUT ;
 struct iio_hw_ring_buffer* iio_to_hw_ring_buf (struct iio_ring_buffer*) ;
 int kfree (int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data (struct sca3000_state*,int ,int**,int) ;

__attribute__((used)) static int sca3000_rip_hw_rb(struct iio_ring_buffer *r,
        size_t count, u8 **data, int *dead_offset)
{
 struct iio_hw_ring_buffer *hw_ring = iio_to_hw_ring_buf(r);
 struct iio_dev *indio_dev = hw_ring->private;
 struct sca3000_state *st = indio_dev->dev_data;
 u8 *rx;
 int ret, num_available, num_read = 0;
 int bytes_per_sample = 1;

 if (st->bpse == 11)
  bytes_per_sample = 2;

 mutex_lock(&st->lock);






 ret = sca3000_read_data(st,
    SCA3000_REG_ADDR_BUF_COUNT,
    &rx, 1);
 if (ret)
  goto error_ret;
 else
  num_available = rx[1];



 kfree(rx);
 if (count > num_available * bytes_per_sample)
  num_read = num_available*bytes_per_sample;
 else
  num_read = count - (count % (bytes_per_sample));


 *dead_offset = 1;
 ret = sca3000_read_data(st,
    SCA3000_REG_ADDR_RING_OUT,
    data, num_read);
error_ret:
 mutex_unlock(&st->lock);

 return ret ? ret : num_read;
}
