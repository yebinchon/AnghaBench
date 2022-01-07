
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct fb_var_screeninfo {TYPE_1__ green; } ;



__attribute__((used)) static int riva_get_cmap_len(const struct fb_var_screeninfo *var)
{
 int rc = 256;

 switch (var->green.length) {
 case 8:
  rc = 256;
  break;
 case 5:
  rc = 32;
  break;
 case 6:
  rc = 64;
  break;
 default:

  break;
 }
 return rc;
}
