
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w100fb_par {int blanked; TYPE_1__* mach; } ;
struct w100_tg_info {int (* resume ) (struct w100fb_par*) ;int (* suspend ) (struct w100fb_par*) ;} ;
struct fb_info {struct w100fb_par* par; } ;
struct TYPE_2__ {struct w100_tg_info* tg; } ;







 int stub1 (struct w100fb_par*) ;
 int stub2 (struct w100fb_par*) ;

__attribute__((used)) static int w100fb_blank(int blank_mode, struct fb_info *info)
{
 struct w100fb_par *par = info->par;
 struct w100_tg_info *tg = par->mach->tg;

 switch(blank_mode) {

  case 131:
 case 128:
 case 132:
  case 130:
    if (par->blanked == 0) {
   if(tg && tg->suspend)
    tg->suspend(par);
   par->blanked = 1;
    }
    break;

  case 129:
    if (par->blanked != 0) {
   if(tg && tg->resume)
    tg->resume(par);
   par->blanked = 0;
    }
    break;
  }
 return 0;
}
