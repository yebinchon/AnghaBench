
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct valkyrie_regvals {int mode; } ;
struct fb_par_valkyrie {struct valkyrie_regvals* init; } ;
struct fb_info_valkyrie {TYPE_2__* valkyrie_regs; } ;
struct fb_info {struct fb_par_valkyrie* par; } ;
struct TYPE_3__ {int r; } ;
struct TYPE_4__ {TYPE_1__ mode; } ;







 int out_8 (int *,int) ;

__attribute__((used)) static int valkyriefb_blank(int blank_mode, struct fb_info *info)
{
 struct fb_info_valkyrie *p = (struct fb_info_valkyrie *) info;
 struct fb_par_valkyrie *par = info->par;
 struct valkyrie_regvals *init = par->init;

 if (init == ((void*)0))
  return 1;

 switch (blank_mode) {
 case 129:
  out_8(&p->valkyrie_regs->mode.r, init->mode);
  break;
 case 131:
  return 1;
 case 128:
 case 132:





  out_8(&p->valkyrie_regs->mode.r, init->mode | 0x40);
  break;
 case 130:
  out_8(&p->valkyrie_regs->mode.r, 0x66);
  break;
 }
 return 0;
}
