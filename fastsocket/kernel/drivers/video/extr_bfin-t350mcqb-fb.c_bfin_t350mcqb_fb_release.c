
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct bfin_t350mcqbfb_info* par; } ;
struct bfin_t350mcqbfb_info {scalar_t__ lq043_open_cnt; int lock; scalar_t__ lq043_mmap; } ;


 int CH_PPI ;
 int SSYNC () ;
 int bfin_t350mcqb_disable_ppi () ;
 int bfin_t350mcqb_stop_timers () ;
 int disable_dma (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bfin_t350mcqb_fb_release(struct fb_info *info, int user)
{
 struct bfin_t350mcqbfb_info *fbi = info->par;

 spin_lock(&fbi->lock);

 fbi->lq043_open_cnt--;
 fbi->lq043_mmap = 0;

 if (fbi->lq043_open_cnt <= 0) {
  bfin_t350mcqb_disable_ppi();
  SSYNC();
  disable_dma(CH_PPI);
  bfin_t350mcqb_stop_timers();
 }

 spin_unlock(&fbi->lock);

 return 0;
}
