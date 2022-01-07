
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int anti_pop_delay; int ext_power_bit; int ext_power_int_reg; int ext_power_reg; } ;
struct xonar_pcm179x {TYPE_1__ generic; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int GPI_EXT_POWER ;
 int OXYGEN_GPI_DATA ;
 int OXYGEN_GPI_INTERRUPT_MASK ;
 int xonar_init_ext_power (struct oxygen*) ;
 int xonar_st_init_common (struct oxygen*) ;
 int xonar_st_init_i2c (struct oxygen*) ;

__attribute__((used)) static void xonar_stx_init(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;

 xonar_st_init_i2c(chip);
 data->generic.anti_pop_delay = 800;
 data->generic.ext_power_reg = OXYGEN_GPI_DATA;
 data->generic.ext_power_int_reg = OXYGEN_GPI_INTERRUPT_MASK;
 data->generic.ext_power_bit = GPI_EXT_POWER;
 xonar_init_ext_power(chip);
 xonar_st_init_common(chip);
}
