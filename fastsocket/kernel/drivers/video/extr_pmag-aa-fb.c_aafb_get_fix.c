
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_fix_screeninfo {int ypanstep; int ywrapstep; int line_length; int accel; int visual; int type; int smem_len; int smem_start; int id; } ;
struct aafb_info {int fb_size; int fb_start; } ;


 int FB_ACCEL_NONE ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_MONO10 ;
 int memset (struct fb_fix_screeninfo*,int ,int) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int aafb_get_fix(struct fb_fix_screeninfo *fix, int con,
   struct fb_info *info)
{
 struct aafb_info *ip = (struct aafb_info *)info;

 memset(fix, 0, sizeof(struct fb_fix_screeninfo));
 strcpy(fix->id, "PMAG-AA");
 fix->smem_start = ip->fb_start;
 fix->smem_len = ip->fb_size;
 fix->type = FB_TYPE_PACKED_PIXELS;
 fix->ypanstep = 1;
 fix->ywrapstep = 1;
 fix->visual = FB_VISUAL_MONO10;
 fix->line_length = 1280;
 fix->accel = FB_ACCEL_NONE;

 return 0;
}
