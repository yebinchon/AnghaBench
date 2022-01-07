
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ submodel; int caps; scalar_t__ duplex; } ;
typedef TYPE_1__ sb_devc ;


 int ES1688_CLOCK1 ;
 int ES1688_CLOCK2 ;
 int ES18XX_CLOCK1 ;
 int ES18XX_CLOCK2 ;
 int SB_CAP_ES18XX_RATE ;
 scalar_t__ SUBMDL_ES1888 ;
 int ess_calc_best_speed (int,int,int,int,int*,int*) ;
 int ess_calc_div (int,int,int*,int*) ;

__attribute__((used)) static void ess_common_speed (sb_devc *devc, int *speedp, int *divp)
{
 int diff = 0, div;

 if (devc->duplex) {



  if (devc->submodel == SUBMDL_ES1888) {
   div = 0x80 | ess_calc_div (795500, 256, speedp, &diff);
  } else {
   div = 0x80 | ess_calc_div (795500, 128, speedp, &diff);
  }
 } else if(devc->caps & SB_CAP_ES18XX_RATE) {
  if (devc->submodel == SUBMDL_ES1888) {
   ess_calc_best_speed(397700, 128, 795500, 256,
      &div, speedp);
  } else {
   ess_calc_best_speed(ES18XX_CLOCK1, 128, ES18XX_CLOCK2, 256,
      &div, speedp);
  }
 } else {
  if (*speedp > 22000) {
   div = 0x80 | ess_calc_div (ES1688_CLOCK1, 256, speedp, &diff);
  } else {
   div = 0x00 | ess_calc_div (ES1688_CLOCK2, 128, speedp, &diff);
  }
 }
 *divp = div;
}
