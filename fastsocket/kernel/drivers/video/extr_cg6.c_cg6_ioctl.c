
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int smem_len; } ;
struct fb_info {TYPE_1__ fix; } ;


 int FBTYPE_SUNFAST_COLOR ;
 int sbusfb_ioctl_helper (unsigned int,unsigned long,struct fb_info*,int ,int,int ) ;

__attribute__((used)) static int cg6_ioctl(struct fb_info *info, unsigned int cmd, unsigned long arg)
{
 return sbusfb_ioctl_helper(cmd, arg, info,
       FBTYPE_SUNFAST_COLOR, 8, info->fix.smem_len);
}
