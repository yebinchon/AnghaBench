
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s3c_fb_win_pal_size (unsigned int) ;

__attribute__((used)) static int s3c_fb_win_has_palette(unsigned int win, unsigned int bpp)
{
 return s3c_fb_win_pal_size(win) <= (1 << bpp);
}
