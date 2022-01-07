
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {struct bfin_t350mcqbfb_info* par; } ;
struct bfin_t350mcqbfb_info {int lq043_open_cnt; int lock; } ;


 int CH_PPI ;
 int SSYNC () ;
 int bfin_t350mcqb_config_dma (struct bfin_t350mcqbfb_info*) ;
 int bfin_t350mcqb_config_ppi (struct bfin_t350mcqbfb_info*) ;
 int bfin_t350mcqb_disable_ppi () ;
 int bfin_t350mcqb_enable_ppi () ;
 int bfin_t350mcqb_init_timers () ;
 int bfin_t350mcqb_start_timers () ;
 int enable_dma (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int bfin_t350mcqb_fb_open(struct fb_info *info, int user)
{
 struct bfin_t350mcqbfb_info *fbi = info->par;

 spin_lock(&fbi->lock);
 fbi->lq043_open_cnt++;

 if (fbi->lq043_open_cnt <= 1) {

  bfin_t350mcqb_disable_ppi();
  SSYNC();

  bfin_t350mcqb_config_dma(fbi);
  bfin_t350mcqb_config_ppi(fbi);
  bfin_t350mcqb_init_timers();


  enable_dma(CH_PPI);
  bfin_t350mcqb_enable_ppi();
  bfin_t350mcqb_start_timers();
 }

 spin_unlock(&fbi->lock);

 return 0;
}
