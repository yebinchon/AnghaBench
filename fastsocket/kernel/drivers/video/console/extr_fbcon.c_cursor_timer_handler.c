
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fbcon_ops {int cursor_timer; } ;
struct fb_info {int queue; struct fbcon_ops* fbcon_par; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static void cursor_timer_handler(unsigned long dev_addr)
{
 struct fb_info *info = (struct fb_info *) dev_addr;
 struct fbcon_ops *ops = info->fbcon_par;

 schedule_work(&info->queue);
 mod_timer(&ops->cursor_timer, jiffies + HZ/5);
}
