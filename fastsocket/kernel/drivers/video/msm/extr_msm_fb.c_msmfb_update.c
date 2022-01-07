
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fb_info {int dummy; } ;


 int msmfb_pan_update (struct fb_info*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void msmfb_update(struct fb_info *info, uint32_t left, uint32_t top,
    uint32_t eright, uint32_t ebottom)
{
 msmfb_pan_update(info, left, top, eright, ebottom, 0, 0);
}
