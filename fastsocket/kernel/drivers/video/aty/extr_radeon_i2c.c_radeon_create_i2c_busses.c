
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeonfb_info {TYPE_1__* i2c; } ;
struct TYPE_2__ {int ddc_reg; struct radeonfb_info* rinfo; } ;


 int GPIO_CRT2_DDC ;
 int GPIO_DVI_DDC ;
 int GPIO_MONID ;
 int GPIO_VGA_DDC ;
 int radeon_setup_i2c_bus (TYPE_1__*,char*) ;

void radeon_create_i2c_busses(struct radeonfb_info *rinfo)
{
 rinfo->i2c[0].rinfo = rinfo;
 rinfo->i2c[0].ddc_reg = GPIO_MONID;
 radeon_setup_i2c_bus(&rinfo->i2c[0], "monid");

 rinfo->i2c[1].rinfo = rinfo;
 rinfo->i2c[1].ddc_reg = GPIO_DVI_DDC;
 radeon_setup_i2c_bus(&rinfo->i2c[1], "dvi");

 rinfo->i2c[2].rinfo = rinfo;
 rinfo->i2c[2].ddc_reg = GPIO_VGA_DDC;
 radeon_setup_i2c_bus(&rinfo->i2c[2], "vga");

 rinfo->i2c[3].rinfo = rinfo;
 rinfo->i2c[3].ddc_reg = GPIO_CRT2_DDC;
 radeon_setup_i2c_bus(&rinfo->i2c[3], "crt2");
}
