
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdo24m {int mode; int (* adj_mode ) (struct tdo24m*,int) ;} ;
struct lcd_device {int dummy; } ;
struct fb_videomode {int xres; } ;


 int MODE_QVGA ;
 int MODE_VGA ;
 struct tdo24m* lcd_get_data (struct lcd_device*) ;
 int stub1 (struct tdo24m*,int) ;

__attribute__((used)) static int tdo24m_set_mode(struct lcd_device *ld, struct fb_videomode *m)
{
 struct tdo24m *lcd = lcd_get_data(ld);
 int mode = MODE_QVGA;

 if (m->xres == 640 || m->xres == 480)
  mode = MODE_VGA;

 if (lcd->mode == mode)
  return 0;

 return lcd->adj_mode(lcd, mode);
}
