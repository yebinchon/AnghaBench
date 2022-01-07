
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w100fb_par {int xres; int yres; } ;


 int BITS_PER_PIXEL ;
 scalar_t__ MEM_WINDOW_BASE ;
 scalar_t__ W100_FB_BASE ;
 int memset_io (scalar_t__,int ,int) ;
 scalar_t__ remapped_fbuf ;

__attribute__((used)) static void w100fb_clear_screen(struct w100fb_par *par)
{
 memset_io(remapped_fbuf + (W100_FB_BASE-MEM_WINDOW_BASE), 0, (par->xres * par->yres * BITS_PER_PIXEL/8));
}
