
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct aafb_cursor {scalar_t__ vbl_cnt; int on; scalar_t__ blink_rate; TYPE_1__ timer; int enable; } ;
struct aafb_info {struct aafb_cursor cursor; } ;


 scalar_t__ CURSOR_TIMER_FREQ ;
 int aafb_set_cursor (struct aafb_info*,int) ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void aafb_cursor_timer_handler(unsigned long data)
{
 struct aafb_info *info = (struct aafb_info *)data;
 struct aafb_cursor *c = &info->cursor;

 if (!c->enable)
  goto out;

 if (c->vbl_cnt && --c->vbl_cnt == 0) {
  c->on ^= 1;
  aafb_set_cursor(info, c->on);
  c->vbl_cnt = c->blink_rate;
 }

out:
 c->timer.expires = jiffies + CURSOR_TIMER_FREQ;
 add_timer(&c->timer);
}
