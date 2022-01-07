
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int insufficient; int index; } ;
struct azx {int dummy; } ;


 int INTCTL ;
 int SD_CTL ;
 int SD_CTL_DMA_START ;
 int SD_INT_MASK ;
 int azx_readl (struct azx*,int ) ;
 int azx_sd_readb (struct azx_dev*,int ) ;
 int azx_sd_writeb (struct azx_dev*,int ,int) ;
 int azx_writel (struct azx*,int ,int) ;

__attribute__((used)) static void azx_stream_start(struct azx *chip, struct azx_dev *azx_dev)
{



 azx_dev->insufficient = 1;


 azx_writel(chip, INTCTL,
     azx_readl(chip, INTCTL) | (1 << azx_dev->index));

 azx_sd_writeb(azx_dev, SD_CTL, azx_sd_readb(azx_dev, SD_CTL) |
        SD_CTL_DMA_START | SD_INT_MASK);
}
