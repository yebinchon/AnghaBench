
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bytes_per_pixel (int) ;

__attribute__((used)) static unsigned long get_line_length(int xres_virtual, int bpp)
{
 return (xres_virtual * bytes_per_pixel(bpp));
}
