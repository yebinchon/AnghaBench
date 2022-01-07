
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fb_info {int dummy; } ;
struct TYPE_2__ {int y; int x; } ;
struct aafb_info {TYPE_1__ cursor; int disp; int bt455; } ;


 int CM_ERASE ;
 int aafbcon_cursor (int *,int ,int ,int ) ;
 int bt455_write_cmap_entry (int ,int,int,int,int) ;

__attribute__((used)) static void aafb_blank(int blank, struct fb_info *info)
{
 struct aafb_info *ip = (struct aafb_info *)info;
 u8 val = blank ? 0x00 : 0x0f;

 bt455_write_cmap_entry(ip->bt455, 1, val, val, val);
 aafbcon_cursor(&ip->disp, CM_ERASE, ip->cursor.x, ip->cursor.y);
}
