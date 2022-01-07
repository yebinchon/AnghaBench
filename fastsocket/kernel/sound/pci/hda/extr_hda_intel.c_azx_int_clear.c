
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx_dev {int dummy; } ;
struct azx {int num_streams; struct azx_dev* azx_dev; } ;


 int ICH6_INT_ALL_STREAM ;
 int ICH6_INT_CTRL_EN ;
 int INTSTS ;
 int RIRBSTS ;
 int RIRB_INT_MASK ;
 int SD_INT_MASK ;
 int SD_STS ;
 int STATESTS ;
 int STATESTS_INT_MASK ;
 int azx_sd_writeb (struct azx_dev*,int ,int ) ;
 int azx_writeb (struct azx*,int ,int ) ;
 int azx_writel (struct azx*,int ,int) ;

__attribute__((used)) static void azx_int_clear(struct azx *chip)
{
 int i;


 for (i = 0; i < chip->num_streams; i++) {
  struct azx_dev *azx_dev = &chip->azx_dev[i];
  azx_sd_writeb(azx_dev, SD_STS, SD_INT_MASK);
 }


 azx_writeb(chip, STATESTS, STATESTS_INT_MASK);


 azx_writeb(chip, RIRBSTS, RIRB_INT_MASK);


 azx_writel(chip, INTSTS, ICH6_INT_CTRL_EN | ICH6_INT_ALL_STREAM);
}
