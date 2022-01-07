
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {int bits_per_word; int len; int cs_change; int * tx_buf; } ;
struct spi_message {int dummy; } ;
struct sca3000_state {int us; int * tx; } ;


 int SCA3000_WRITE_REG (int ) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;

int sca3000_write_reg(struct sca3000_state *st, u8 address, u8 val)
{
 struct spi_transfer xfer = {
  .bits_per_word = 8,
  .len = 2,
  .cs_change = 1,
  .tx_buf = st->tx,
 };
 struct spi_message msg;

 st->tx[0] = SCA3000_WRITE_REG(address);
 st->tx[1] = val;
 spi_message_init(&msg);
 spi_message_add_tail(&xfer, &msg);

 return spi_sync(st->us, &msg);
}
