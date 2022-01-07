
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffb_par {int fbsize; } ;
struct fb_info {scalar_t__ par; } ;


 int FBTYPE_CREATOR ;
 int sbusfb_ioctl_helper (unsigned int,unsigned long,struct fb_info*,int ,int,int ) ;

__attribute__((used)) static int ffb_ioctl(struct fb_info *info, unsigned int cmd, unsigned long arg)
{
 struct ffb_par *par = (struct ffb_par *)info->par;

 return sbusfb_ioctl_helper(cmd, arg, info,
       FBTYPE_CREATOR, 24, par->fbsize);
}
