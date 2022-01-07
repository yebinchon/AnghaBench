
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cyberpro_info {int dev_name; TYPE_3__* info; int disable_extregs; int enable_extregs; int fb_size; int fb; int regs; int dev; } ;
struct TYPE_4__ {int id; int smem_len; } ;
struct TYPE_5__ {TYPE_1__ fix; int screen_base; } ;
struct TYPE_6__ {TYPE_2__ fb; int regs; int dev; } ;


 int cyber2000fb_disable_extregs ;
 int cyber2000fb_enable_extregs ;
 TYPE_3__* int_cfb_info ;
 int strlcpy (int ,int ,int) ;

int cyber2000fb_attach(struct cyberpro_info *info, int idx)
{
 if (int_cfb_info != ((void*)0)) {
  info->dev = int_cfb_info->dev;
  info->regs = int_cfb_info->regs;
  info->fb = int_cfb_info->fb.screen_base;
  info->fb_size = int_cfb_info->fb.fix.smem_len;
  info->enable_extregs = cyber2000fb_enable_extregs;
  info->disable_extregs = cyber2000fb_disable_extregs;
  info->info = int_cfb_info;

  strlcpy(info->dev_name, int_cfb_info->fb.fix.id,
   sizeof(info->dev_name));
 }

 return int_cfb_info != ((void*)0);
}
