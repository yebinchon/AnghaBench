
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i810fb_par {int dev_flags; } ;
struct fb_info {struct i810fb_par* par; } ;


 int ALWAYS_SYNC ;
 int wait_for_engine_idle (struct fb_info*) ;
 int wait_for_space (struct fb_info*,int ) ;

__attribute__((used)) static inline u32 begin_iring(struct fb_info *info, u32 space)
{
 struct i810fb_par *par = info->par;

 if (par->dev_flags & ALWAYS_SYNC)
  wait_for_engine_idle(info);
 return wait_for_space(info, space);
}
