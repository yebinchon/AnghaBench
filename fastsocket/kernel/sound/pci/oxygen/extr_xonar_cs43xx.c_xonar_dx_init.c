
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_power_bit; int ext_power_int_reg; int ext_power_reg; } ;
struct xonar_cs43xx {TYPE_1__ generic; } ;
struct oxygen {struct xonar_cs43xx* model_data; } ;


 int GPI_EXT_POWER ;
 int OXYGEN_GPI_DATA ;
 int OXYGEN_GPI_INTERRUPT_MASK ;
 int xonar_d1_init (struct oxygen*) ;
 int xonar_init_ext_power (struct oxygen*) ;

__attribute__((used)) static void xonar_dx_init(struct oxygen *chip)
{
 struct xonar_cs43xx *data = chip->model_data;

 data->generic.ext_power_reg = OXYGEN_GPI_DATA;
 data->generic.ext_power_int_reg = OXYGEN_GPI_INTERRUPT_MASK;
 data->generic.ext_power_bit = GPI_EXT_POWER;
 xonar_init_ext_power(chip);
 xonar_d1_init(chip);
}
