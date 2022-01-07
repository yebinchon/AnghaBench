
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_info {int fix; int var; } ;


 int FBCON_ATTRIBUTE_BOLD ;
 int FBCON_ATTRIBUTE_REVERSE ;
 int FBCON_ATTRIBUTE_UNDERLINE ;
 scalar_t__ attr_bold (int ) ;
 scalar_t__ attr_reverse (int ) ;
 scalar_t__ attr_underline (int ) ;
 int fb_get_color_depth (int *,int *) ;

__attribute__((used)) static inline int get_attribute(struct fb_info *info, u16 c)
{
 int attribute = 0;

 if (fb_get_color_depth(&info->var, &info->fix) == 1) {
  if (attr_underline(c))
   attribute |= FBCON_ATTRIBUTE_UNDERLINE;
  if (attr_reverse(c))
   attribute |= FBCON_ATTRIBUTE_REVERSE;
  if (attr_bold(c))
   attribute |= FBCON_ATTRIBUTE_BOLD;
 }

 return attribute;
}
