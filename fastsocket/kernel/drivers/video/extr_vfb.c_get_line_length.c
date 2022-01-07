
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;



__attribute__((used)) static u_long get_line_length(int xres_virtual, int bpp)
{
 u_long length;

 length = xres_virtual * bpp;
 length = (length + 31) & ~31;
 length >>= 3;
 return (length);
}
