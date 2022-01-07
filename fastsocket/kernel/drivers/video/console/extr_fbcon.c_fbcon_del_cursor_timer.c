
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fbcon_ops {int flags; int cursor_timer; } ;
struct TYPE_2__ {scalar_t__ func; } ;
struct fb_info {TYPE_1__ queue; struct fbcon_ops* fbcon_par; } ;


 int FBCON_FLAGS_CURSOR_TIMER ;
 int del_timer_sync (int *) ;
 scalar_t__ fb_flashcursor ;

__attribute__((used)) static void fbcon_del_cursor_timer(struct fb_info *info)
{
 struct fbcon_ops *ops = info->fbcon_par;

 if (info->queue.func == fb_flashcursor &&
     ops->flags & FBCON_FLAGS_CURSOR_TIMER) {
  del_timer_sync(&ops->cursor_timer);
  ops->flags &= ~FBCON_FLAGS_CURSOR_TIMER;
 }
}
