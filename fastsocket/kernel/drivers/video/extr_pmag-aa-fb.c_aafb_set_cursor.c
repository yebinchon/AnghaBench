
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aafb_cursor {int y; int x; } ;
struct aafb_info {int bt431; struct aafb_cursor cursor; } ;


 int bt431_enable_cursor (int ) ;
 int bt431_erase_cursor (int ) ;
 int bt431_position_cursor (int ,int ,int ) ;

__attribute__((used)) static void aafb_set_cursor(struct aafb_info *info, int on)
{
 struct aafb_cursor *c = &info->cursor;

 if (on) {
  bt431_position_cursor(info->bt431, c->x, c->y);
  bt431_enable_cursor(info->bt431);
 } else
  bt431_erase_cursor(info->bt431);
}
