
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int * rx_buf; void** tx_buf; } ;
struct spi_message {int dummy; } ;
struct lis3l02dq_state {int buf_lock; int us; TYPE_1__* indio_dev; void** tx; } ;
struct TYPE_2__ {int scan_count; int scan_mask; } ;


 int ARRAY_SIZE (void**) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct spi_transfer*) ;
 struct spi_transfer* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void** read_all_tx_array ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

int lis3l02dq_read_all(struct lis3l02dq_state *st, u8 *rx_array)
{
 struct spi_transfer *xfers;
 struct spi_message msg;
 int ret, i, j = 0;

 xfers = kzalloc((st->indio_dev->scan_count) * 2
   * sizeof(*xfers), GFP_KERNEL);
 if (!xfers)
  return -ENOMEM;

 mutex_lock(&st->buf_lock);

 for (i = 0; i < ARRAY_SIZE(read_all_tx_array)/4; i++) {
  if (st->indio_dev->scan_mask & (1 << i)) {

   xfers[j].tx_buf = st->tx + 2*j;
   st->tx[2*j] = read_all_tx_array[i*4];
   st->tx[2*j + 1] = 0;
   if (rx_array)
    xfers[j].rx_buf = rx_array + j*2;
   xfers[j].bits_per_word = 8;
   xfers[j].len = 2;
   xfers[j].cs_change = 1;
   j++;


   xfers[j].tx_buf = st->tx + 2*j;
   st->tx[2*j] = read_all_tx_array[i*4 + 2];
   st->tx[2*j + 1] = 0;
   if (rx_array)
    xfers[j].rx_buf = rx_array + j*2;
   xfers[j].bits_per_word = 8;
   xfers[j].len = 2;
   xfers[j].cs_change = 1;
   j++;
  }
 }



 spi_message_init(&msg);
 for (j = 0; j < st->indio_dev->scan_count * 2; j++)
  spi_message_add_tail(&xfers[j], &msg);

 ret = spi_sync(st->us, &msg);
 mutex_unlock(&st->buf_lock);
 kfree(xfers);

 return ret;
}
