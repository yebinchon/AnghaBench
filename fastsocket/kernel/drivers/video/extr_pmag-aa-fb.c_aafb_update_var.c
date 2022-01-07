
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct display {int dummy; } ;
struct TYPE_2__ {int y; int x; } ;
struct aafb_info {TYPE_1__ cursor; struct display disp; } ;


 int CM_ERASE ;
 int aafbcon_cursor (struct display*,int ,int ,int ) ;
 int currcon ;
 struct display* fb_display ;

__attribute__((used)) static int aafb_update_var(int con, struct fb_info *info)
{
 struct aafb_info *ip = (struct aafb_info *)info;
 struct display *disp = (con < 0) ? &ip->disp : (fb_display + con);

 if (con == currcon)
  aafbcon_cursor(disp, CM_ERASE, ip->cursor.x, ip->cursor.y);

 return 0;
}
