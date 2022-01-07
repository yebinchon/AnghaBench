
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct bfin_bf54xfb_info* par; } ;
struct bfin_bf54xfb_info {int lq043_open_cnt; int lock; } ;


 int CH_EPPI0 ;
 int EPPI_EN ;
 int SSYNC () ;
 int bfin_read_EPPI0_CONTROL () ;
 int bfin_write_EPPI0_CONTROL (int) ;
 int config_dma (struct bfin_bf54xfb_info*) ;
 int config_ppi (struct bfin_bf54xfb_info*) ;
 int enable_dma (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bfin_bf54x_fb_open(struct fb_info *info, int user)
{
 struct bfin_bf54xfb_info *fbi = info->par;

 spin_lock(&fbi->lock);
 fbi->lq043_open_cnt++;

 if (fbi->lq043_open_cnt <= 1) {

  bfin_write_EPPI0_CONTROL(0);
  SSYNC();

  config_dma(fbi);
  config_ppi(fbi);


  enable_dma(CH_EPPI0);
  bfin_write_EPPI0_CONTROL(bfin_read_EPPI0_CONTROL() | EPPI_EN);
 }

 spin_unlock(&fbi->lock);

 return 0;
}
