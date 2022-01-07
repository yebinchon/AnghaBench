
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int getscl; int getsda; int setscl; int setsda; } ;
struct TYPE_8__ {int reg; struct savagefb_par* par; TYPE_3__ algo; int ioaddr; } ;
struct TYPE_6__ {int vbase; } ;
struct savagefb_par {TYPE_4__ chan; TYPE_2__ mmio; } ;
struct TYPE_5__ {int accel; } ;
struct fb_info {TYPE_1__ fix; struct savagefb_par* par; } ;


 int CR_SERIAL2 ;




 int prosavage_gpio_getscl ;
 int prosavage_gpio_getsda ;
 int prosavage_gpio_setscl ;
 int prosavage_gpio_setsda ;
 int savage4_gpio_getscl ;
 int savage4_gpio_getsda ;
 int savage4_gpio_setscl ;
 int savage4_gpio_setsda ;
 int savage_setup_i2c_bus (TYPE_4__*,char*) ;

void savagefb_create_i2c_busses(struct fb_info *info)
{
 struct savagefb_par *par = info->par;
 par->chan.par = par;

 switch(info->fix.accel) {
 case 131:
 case 130:
  par->chan.reg = CR_SERIAL2;
  par->chan.ioaddr = par->mmio.vbase;
  par->chan.algo.setsda = prosavage_gpio_setsda;
  par->chan.algo.setscl = prosavage_gpio_setscl;
  par->chan.algo.getsda = prosavage_gpio_getsda;
  par->chan.algo.getscl = prosavage_gpio_getscl;
  break;
 case 128:
 case 129:
  par->chan.reg = 0xff20;
  par->chan.ioaddr = par->mmio.vbase;
  par->chan.algo.setsda = savage4_gpio_setsda;
  par->chan.algo.setscl = savage4_gpio_setscl;
  par->chan.algo.getsda = savage4_gpio_getsda;
  par->chan.algo.getscl = savage4_gpio_getscl;
  break;
 default:
  par->chan.par = ((void*)0);
 }

 savage_setup_i2c_bus(&par->chan, "SAVAGE DDC2");
}
