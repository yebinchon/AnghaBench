
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intelfb_info {int num_outputs; int chipset; TYPE_1__* output; } ;
struct TYPE_2__ {int i2c_bus; void* type; int ddc_bus; } ;


 int GPIOA ;
 int GPIOD ;
 int GPIOE ;
 int I2C_CLASS_DDC ;
 void* INTELFB_OUTPUT_ANALOG ;
 void* INTELFB_OUTPUT_DVO ;
 void* INTELFB_OUTPUT_SDVO ;
 int intelfb_setup_i2c_bus (struct intelfb_info*,int *,int ,char*,int ) ;

void intelfb_create_i2c_busses(struct intelfb_info *dinfo)
{
 int i = 0;


 dinfo->num_outputs = 1;
 dinfo->output[i].type = INTELFB_OUTPUT_ANALOG;


 intelfb_setup_i2c_bus(dinfo, &dinfo->output[i].ddc_bus, GPIOA,
         "CRTDDC_A", I2C_CLASS_DDC);
 i++;





 switch(dinfo->chipset) {
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
  dinfo->output[i].type = INTELFB_OUTPUT_DVO;
  intelfb_setup_i2c_bus(dinfo, &dinfo->output[i].ddc_bus,
          GPIOD, "DVODDC_D", I2C_CLASS_DDC);
  intelfb_setup_i2c_bus(dinfo, &dinfo->output[i].i2c_bus,
          GPIOE, "DVOI2C_E", 0);
  i++;
  break;
 case 134:
 case 133:

 case 132:
 case 131:
 case 130:
 case 129:
 case 128:

  dinfo->output[i].type = INTELFB_OUTPUT_SDVO;
  intelfb_setup_i2c_bus(dinfo, &dinfo->output[i].i2c_bus,
          GPIOE, "SDVOCTRL_E", 0);


  i++;


  dinfo->output[i].type = INTELFB_OUTPUT_SDVO;
  dinfo->output[i].i2c_bus = dinfo->output[i - 1].i2c_bus;


  i++;
  break;
 }
 dinfo->num_outputs = i;
}
