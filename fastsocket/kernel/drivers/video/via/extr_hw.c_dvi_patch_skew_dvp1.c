
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* chip_info; } ;
struct TYPE_3__ {int gfx_chip_name; } ;



 TYPE_2__* viaparinfo ;

__attribute__((used)) static void dvi_patch_skew_dvp1(void)
{
 switch (viaparinfo->chip_info->gfx_chip_name) {
 case 128:
  {
   break;
  }

 default:
  {
   break;
  }
 }
}
