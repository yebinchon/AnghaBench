
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct fb_info {int screen_base; } ;


 int writel (int,int ) ;

__attribute__((used)) static inline void lcd_write_control(struct fb_info *info, u8 control)
{
 writel((u32)control << 24, info->screen_base);
}
