
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfer ;
typedef int u8 ;
typedef int u16 ;
struct spi_transfer {int* tx_buf; int bits_per_word; int len; int* rx_buf; } ;
struct spi_message {int dummy; } ;
struct mipid_device {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int ) ;
 int dev_dbg (int *,char*,int) ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (TYPE_1__*,struct spi_message*) ;

__attribute__((used)) static void mipid_transfer(struct mipid_device *md, int cmd, const u8 *wbuf,
      int wlen, u8 *rbuf, int rlen)
{
 struct spi_message m;
 struct spi_transfer *x, xfer[4];
 u16 w;
 int r;

 BUG_ON(md->spi == ((void*)0));

 spi_message_init(&m);

 memset(xfer, 0, sizeof(xfer));
 x = &xfer[0];

 cmd &= 0xff;
 x->tx_buf = &cmd;
 x->bits_per_word = 9;
 x->len = 2;
 spi_message_add_tail(x, &m);

 if (wlen) {
  x++;
  x->tx_buf = wbuf;
  x->len = wlen;
  x->bits_per_word = 9;
  spi_message_add_tail(x, &m);
 }

 if (rlen) {
  x++;
  x->rx_buf = &w;
  x->len = 1;
  spi_message_add_tail(x, &m);

  if (rlen > 1) {



   x->bits_per_word = 9;
   x->len = 2;

   x++;
   x->rx_buf = &rbuf[1];
   x->len = rlen - 1;
   spi_message_add_tail(x, &m);
  }
 }

 r = spi_sync(md->spi, &m);
 if (r < 0)
  dev_dbg(&md->spi->dev, "spi_sync %d\n", r);

 if (rlen)
  rbuf[0] = w & 0xff;
}
