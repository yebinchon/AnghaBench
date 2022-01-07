
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {int screen_base; } ;


 int readl (int ) ;

__attribute__((used)) static inline u8 lcd_read_control(struct fb_info *info)
{
 return readl(info->screen_base) >> 24;
}
