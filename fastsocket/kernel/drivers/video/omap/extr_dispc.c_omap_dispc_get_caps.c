
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_caps {int plane_color; int ctrl; } ;


 int OMAPFB_CAPS_PLANE_RELOCATE_MEM ;
 int OMAPFB_CAPS_PLANE_SCALE ;
 int OMAPFB_COLOR_CLUT_1BPP ;
 int OMAPFB_COLOR_CLUT_2BPP ;
 int OMAPFB_COLOR_CLUT_4BPP ;
 int OMAPFB_COLOR_CLUT_8BPP ;
 int OMAPFB_COLOR_RGB444 ;
 int OMAPFB_COLOR_RGB565 ;
 int OMAPFB_COLOR_YUV422 ;
 int OMAPFB_COLOR_YUY422 ;

__attribute__((used)) static void omap_dispc_get_caps(int plane, struct omapfb_caps *caps)
{
 caps->ctrl |= OMAPFB_CAPS_PLANE_RELOCATE_MEM;
 if (plane > 0)
  caps->ctrl |= OMAPFB_CAPS_PLANE_SCALE;
 caps->plane_color |= (1 << OMAPFB_COLOR_RGB565) |
        (1 << OMAPFB_COLOR_YUV422) |
        (1 << OMAPFB_COLOR_YUY422);
 if (plane == 0)
  caps->plane_color |= (1 << OMAPFB_COLOR_CLUT_8BPP) |
         (1 << OMAPFB_COLOR_CLUT_4BPP) |
         (1 << OMAPFB_COLOR_CLUT_2BPP) |
         (1 << OMAPFB_COLOR_CLUT_1BPP) |
         (1 << OMAPFB_COLOR_RGB444);
}
