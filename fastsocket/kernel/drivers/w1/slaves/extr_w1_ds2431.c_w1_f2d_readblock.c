
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct w1_slave {int dev; int master; } ;


 char W1_F2D_READ_EEPROM ;
 int W1_F2D_READ_MAXLEN ;
 int W1_F2D_READ_RETRIES ;
 int dev_err (int *,char*,int) ;
 int memcmp (char*,char*,int) ;
 int w1_read_block (int ,char*,int) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (int ,char*,int) ;

__attribute__((used)) static int w1_f2d_readblock(struct w1_slave *sl, int off, int count, char *buf)
{
 u8 wrbuf[3];
 u8 cmp[W1_F2D_READ_MAXLEN];
 int tries = W1_F2D_READ_RETRIES;

 do {
  wrbuf[0] = W1_F2D_READ_EEPROM;
  wrbuf[1] = off & 0xff;
  wrbuf[2] = off >> 8;

  if (w1_reset_select_slave(sl))
   return -1;

  w1_write_block(sl->master, wrbuf, 3);
  w1_read_block(sl->master, buf, count);

  if (w1_reset_select_slave(sl))
   return -1;

  w1_write_block(sl->master, wrbuf, 3);
  w1_read_block(sl->master, cmp, count);

  if (!memcmp(cmp, buf, count))
   return 0;
 } while (--tries);

 dev_err(&sl->dev, "proof reading failed %d times\n",
   W1_F2D_READ_RETRIES);

 return -1;
}
