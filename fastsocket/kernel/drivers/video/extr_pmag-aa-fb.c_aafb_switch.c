
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct display {TYPE_2__* conp; } ;
struct aafb_info {struct display disp; } ;
struct TYPE_4__ {TYPE_1__* vc_sw; } ;
struct TYPE_3__ {int (* con_cursor ) (TYPE_2__*,int ) ;} ;


 int CM_ERASE ;
 int aafb_set_disp (struct display*,int,struct aafb_info*) ;
 int currcon ;
 struct display* fb_display ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int aafb_switch(int con, struct fb_info *info)
{
 struct aafb_info *ip = (struct aafb_info *)info;
 struct display *old = (currcon < 0) ? &ip->disp : (fb_display + currcon);
 struct display *new = (con < 0) ? &ip->disp : (fb_display + con);

 if (old->conp && old->conp->vc_sw && old->conp->vc_sw->con_cursor)
  old->conp->vc_sw->con_cursor(old->conp, CM_ERASE);


 currcon = con;
 aafb_set_disp(new, con, ip);

 return 0;
}
