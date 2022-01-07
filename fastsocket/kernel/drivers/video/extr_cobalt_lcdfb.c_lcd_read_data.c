
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fb_info {scalar_t__ screen_base; } ;


 scalar_t__ LCD_DATA_REG_OFFSET ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u8 lcd_read_data(struct fb_info *info)
{
 return readl(info->screen_base + LCD_DATA_REG_OFFSET) >> 24;
}
