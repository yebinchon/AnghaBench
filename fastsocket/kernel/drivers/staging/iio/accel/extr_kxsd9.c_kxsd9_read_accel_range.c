
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; int len; int cs_change; int* rx_buf; scalar_t__* tx_buf; } ;
struct spi_message {int dummy; } ;
struct kxsd9_state {int* rx; int buf_lock; int us; scalar_t__* tx; } ;
struct iio_dev {struct kxsd9_state* dev_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;






 int KXSD9_FS_MASK ;
 scalar_t__ KXSD9_READ (int ) ;
 int KXSD9_REG_CTRL_C ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static ssize_t kxsd9_read_accel_range(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 int ret;
 ssize_t len = 0;
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct kxsd9_state *st = indio_dev->dev_data;
 struct spi_transfer xfer = {
  .bits_per_word = 8,
  .len = 2,
  .cs_change = 1,
  .tx_buf = st->tx,
  .rx_buf = st->rx,
 };
 struct spi_message msg;

 mutex_lock(&st->buf_lock);
 st->tx[0] = KXSD9_READ(KXSD9_REG_CTRL_C);
 st->tx[1] = 0;
 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);
 ret = spi_sync(st->us, &msg);
 if (ret)
  goto error_ret;

 switch (st->rx[1] & KXSD9_FS_MASK) {
 case 128:
  len += sprintf(buf, "8\n");
  break;
 case 129:
  len += sprintf(buf, "6\n");
  break;
 case 130:
  len += sprintf(buf, "4\n");
  break;
 case 131:
  len += sprintf(buf, "2\n");
  break;
 }

error_ret:
 mutex_unlock(&st->buf_lock);

 return ret ? ret : len;
}
