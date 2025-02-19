
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imstt_regvals {int dummy; } ;
struct imstt_par {struct imstt_regvals init; } ;


 struct imstt_regvals tvp_reg_init_12 ;
 struct imstt_regvals tvp_reg_init_13 ;
 struct imstt_regvals tvp_reg_init_17 ;
 struct imstt_regvals tvp_reg_init_18 ;
 struct imstt_regvals tvp_reg_init_19 ;
 struct imstt_regvals tvp_reg_init_2 ;
 struct imstt_regvals tvp_reg_init_20 ;
 struct imstt_regvals tvp_reg_init_6 ;

__attribute__((used)) static struct imstt_regvals *
compute_imstt_regvals_tvp(struct imstt_par *par, int xres, int yres)
{
 struct imstt_regvals *init;

 switch (xres) {
  case 512:
   init = &tvp_reg_init_2;
   break;
  case 640:
   init = &tvp_reg_init_6;
   break;
  case 800:
   init = &tvp_reg_init_12;
   break;
  case 832:
   init = &tvp_reg_init_13;
   break;
  case 1024:
   init = &tvp_reg_init_17;
   break;
  case 1152:
   init = &tvp_reg_init_18;
   break;
  case 1280:
   init = yres == 960 ? &tvp_reg_init_19 : &tvp_reg_init_20;
   break;
  default:
   return ((void*)0);
 }
 par->init = *init;
 return init;
}
