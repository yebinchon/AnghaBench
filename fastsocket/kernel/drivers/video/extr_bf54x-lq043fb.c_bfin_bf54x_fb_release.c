
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct bfin_bf54xfb_info* par; } ;
struct bfin_bf54xfb_info {scalar_t__ lq043_open_cnt; int lock; scalar_t__ lq043_mmap; } ;


 int CH_EPPI0 ;
 int SSYNC () ;
 int bfin_write_EPPI0_CONTROL (int ) ;
 int disable_dma (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bfin_bf54x_fb_release(struct fb_info *info, int user)
{
 struct bfin_bf54xfb_info *fbi = info->par;

 spin_lock(&fbi->lock);

 fbi->lq043_open_cnt--;
 fbi->lq043_mmap = 0;

 if (fbi->lq043_open_cnt <= 0) {

  bfin_write_EPPI0_CONTROL(0);
  SSYNC();
  disable_dma(CH_EPPI0);
 }

 spin_unlock(&fbi->lock);

 return 0;
}
