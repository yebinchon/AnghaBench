
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int dummy; } ;
struct azx {int num_streams; struct azx_dev* azx_dev; } ;


 int ICH6_INT_CTRL_EN ;
 int ICH6_INT_GLOBAL_EN ;
 int INTCTL ;
 int SD_CTL ;
 int SD_INT_MASK ;
 int azx_readl (struct azx*,int ) ;
 int azx_sd_readb (struct azx_dev*,int ) ;
 int azx_sd_writeb (struct azx_dev*,int ,int) ;
 int azx_writeb (struct azx*,int ,int ) ;
 int azx_writel (struct azx*,int ,int) ;

__attribute__((used)) static void azx_int_disable(struct azx *chip)
{
 int i;


 for (i = 0; i < chip->num_streams; i++) {
  struct azx_dev *azx_dev = &chip->azx_dev[i];
  azx_sd_writeb(azx_dev, SD_CTL,
         azx_sd_readb(azx_dev, SD_CTL) & ~SD_INT_MASK);
 }


 azx_writeb(chip, INTCTL, 0);


 azx_writel(chip, INTCTL, azx_readl(chip, INTCTL) &
     ~(ICH6_INT_CTRL_EN | ICH6_INT_GLOBAL_EN));
}
