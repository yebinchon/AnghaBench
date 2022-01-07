
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viafb_par {int fbmem_free; int fbmem; } ;
struct fb_fix_screeninfo {int ypanstep; scalar_t__ ywrapstep; scalar_t__ xpanstep; scalar_t__ type_aux; int type; int smem_len; int smem_start; int id; } ;
struct TYPE_3__ {int accel; } ;
struct TYPE_4__ {TYPE_1__ fix; } ;


 int FB_ACCEL_VIA_UNICHROME ;
 int FB_TYPE_PACKED_PIXELS ;
 int memset (struct fb_fix_screeninfo*,int ,int) ;
 int strcpy (int ,int ) ;
 int viafb_name ;
 TYPE_2__* viafbinfo ;

__attribute__((used)) static void viafb_setup_fixinfo(struct fb_fix_screeninfo *fix,
 struct viafb_par *viaparinfo)
{
 memset(fix, 0, sizeof(struct fb_fix_screeninfo));
 strcpy(fix->id, viafb_name);

 fix->smem_start = viaparinfo->fbmem;
 fix->smem_len = viaparinfo->fbmem_free;

 fix->type = FB_TYPE_PACKED_PIXELS;
 fix->type_aux = 0;

 fix->xpanstep = fix->ywrapstep = 0;
 fix->ypanstep = 1;


 viafbinfo->fix.accel = FB_ACCEL_VIA_UNICHROME;
}
