
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int CON_IS_VISIBLE (struct vc_data*) ;
 int EINVAL ;
 scalar_t__ VIDEO_TYPE_VGAC ;
 scalar_t__ vga_palette_blanked ;
 int vga_set_palette (struct vc_data*,unsigned char*) ;
 scalar_t__ vga_video_type ;

__attribute__((used)) static int vgacon_set_palette(struct vc_data *vc, unsigned char *table)
{







 return -EINVAL;

}
