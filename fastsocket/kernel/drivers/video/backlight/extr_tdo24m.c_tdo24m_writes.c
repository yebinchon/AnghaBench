
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct spi_transfer {int len; } ;
struct tdo24m {int* buf; int msg; int spi_dev; int color_invert; struct spi_transfer xfer; } ;


 int CMD0 (int) ;
 int CMD_NULL ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int tdo24m_writes(struct tdo24m *lcd, uint32_t *array)
{
 struct spi_transfer *x = &lcd->xfer;
 uint32_t data, *p = array;
 int nparams, err = 0;

 for (; *p != CMD_NULL; p++) {
  if (!lcd->color_invert && *p == CMD0(0x21))
   continue;

  nparams = (*p >> 30) & 0x3;

  data = *p << (7 - nparams);
  switch (nparams) {
  case 0:
   lcd->buf[0] = (data >> 8) & 0xff;
   lcd->buf[1] = data & 0xff;
   break;
  case 1:
   lcd->buf[0] = (data >> 16) & 0xff;
   lcd->buf[1] = (data >> 8) & 0xff;
   lcd->buf[2] = data & 0xff;
   break;
  case 2:
   lcd->buf[0] = (data >> 24) & 0xff;
   lcd->buf[1] = (data >> 16) & 0xff;
   lcd->buf[2] = (data >> 8) & 0xff;
   lcd->buf[3] = data & 0xff;
   break;
  default:
   continue;
  }
  x->len = nparams + 2;
  err = spi_sync(lcd->spi_dev, &lcd->msg);
  if (err)
   break;
 }

 return err;
}
