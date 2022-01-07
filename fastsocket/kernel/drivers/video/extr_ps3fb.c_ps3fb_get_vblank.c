
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_vblank {int flags; } ;


 int FB_VBLANK_HAVE_VSYNC ;
 int memset (struct fb_vblank*,int ,int) ;

__attribute__((used)) static int ps3fb_get_vblank(struct fb_vblank *vblank)
{
 memset(vblank, 0, sizeof(*vblank));
 vblank->flags = FB_VBLANK_HAVE_VSYNC;
 return 0;
}
