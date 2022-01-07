
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_par_control {int xoffset; int yoffset; int pitch; int cmode; } ;
struct fb_info_control {struct fb_par_control par; } ;


 int CNTRL_REG (struct fb_info_control*,int ) ;
 int out_le32 (int ,int) ;
 int start_addr ;

__attribute__((used)) static inline void set_screen_start(int xoffset, int yoffset,
 struct fb_info_control *p)
{
 struct fb_par_control *par = &p->par;

 par->xoffset = xoffset;
 par->yoffset = yoffset;
 out_le32(CNTRL_REG(p,start_addr),
   par->yoffset * par->pitch + (par->xoffset << par->cmode));
}
