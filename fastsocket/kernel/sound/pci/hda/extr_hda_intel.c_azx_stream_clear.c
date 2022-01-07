
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int dummy; } ;
struct azx {int dummy; } ;


 int SD_CTL ;
 int SD_CTL_DMA_START ;
 int SD_INT_MASK ;
 int SD_STS ;
 int azx_sd_readb (struct azx_dev*,int ) ;
 int azx_sd_writeb (struct azx_dev*,int ,int) ;

__attribute__((used)) static void azx_stream_clear(struct azx *chip, struct azx_dev *azx_dev)
{
 azx_sd_writeb(azx_dev, SD_CTL, azx_sd_readb(azx_dev, SD_CTL) &
        ~(SD_CTL_DMA_START | SD_INT_MASK));
 azx_sd_writeb(azx_dev, SD_STS, SD_INT_MASK);
}
