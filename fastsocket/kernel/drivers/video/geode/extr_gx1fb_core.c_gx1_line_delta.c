
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int gx1_line_delta(int xres, int bpp)
{
 int line_delta = xres * (bpp >> 3);

 if (line_delta > 2048)
  line_delta = 4096;
 else if (line_delta > 1024)
  line_delta = 2048;
 else
  line_delta = 1024;
 return line_delta;
}
