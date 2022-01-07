
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {scalar_t__* posbuf; } ;
struct azx {int dummy; } ;


 int SD_CTL ;
 unsigned char SD_CTL_STREAM_RESET ;
 unsigned char azx_sd_readb (struct azx_dev*,int ) ;
 int azx_sd_writeb (struct azx_dev*,int ,unsigned char) ;
 int azx_stream_clear (struct azx*,struct azx_dev*) ;
 int udelay (int) ;

__attribute__((used)) static void azx_stream_reset(struct azx *chip, struct azx_dev *azx_dev)
{
 unsigned char val;
 int timeout;

 azx_stream_clear(chip, azx_dev);

 azx_sd_writeb(azx_dev, SD_CTL, azx_sd_readb(azx_dev, SD_CTL) |
        SD_CTL_STREAM_RESET);
 udelay(3);
 timeout = 300;
 while (!((val = azx_sd_readb(azx_dev, SD_CTL)) & SD_CTL_STREAM_RESET) &&
        --timeout)
  ;
 val &= ~SD_CTL_STREAM_RESET;
 azx_sd_writeb(azx_dev, SD_CTL, val);
 udelay(3);

 timeout = 300;

 while (((val = azx_sd_readb(azx_dev, SD_CTL)) & SD_CTL_STREAM_RESET) &&
        --timeout)
  ;


 *azx_dev->posbuf = 0;
}
