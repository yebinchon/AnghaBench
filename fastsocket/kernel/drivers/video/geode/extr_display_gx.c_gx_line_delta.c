
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int gx_line_delta(int xres, int bpp)
{

 return (xres * (bpp >> 3) + 7) & ~0x7;
}
