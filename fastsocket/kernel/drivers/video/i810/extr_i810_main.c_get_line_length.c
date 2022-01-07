
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i810fb_par {int dummy; } ;



__attribute__((used)) static u32 get_line_length(struct i810fb_par *par, int xres_virtual, int bpp)
{
    u32 length;

 length = xres_virtual*bpp;
 length = (length+31)&-32;
 length >>= 3;
 return length;
}
