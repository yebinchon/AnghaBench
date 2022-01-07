
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int anti_pop_delay; int ext_power_bit; int ext_power_int_reg; int ext_power_reg; int output_enable_bit; } ;
struct TYPE_5__ {int dacs; int h6; TYPE_1__ generic; } ;
struct xonar_hdav {int hdmi; TYPE_2__ pcm179x; } ;
struct TYPE_6__ {int dac_channels_mixer; } ;
struct oxygen {int card; TYPE_3__ model; struct xonar_hdav* model_data; } ;


 int GPIO_HDAV_MAGIC ;
 int GPIO_HDAV_OUTPUT_ENABLE ;
 int GPIO_INPUT_ROUTE ;
 int GPI_EXT_POWER ;
 int OXYGEN_2WIRE_BUS_STATUS ;
 int OXYGEN_2WIRE_INTERRUPT_MASK ;
 int OXYGEN_2WIRE_LENGTH_8 ;
 int OXYGEN_2WIRE_SPEED_STANDARD ;
 int OXYGEN_GPIO_CONTROL ;
 int OXYGEN_GPIO_DATA ;
 int OXYGEN_GPI_DATA ;
 int OXYGEN_GPI_INTERRUPT_MASK ;
 int oxygen_clear_bits16 (struct oxygen*,int ,int) ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;
 int oxygen_write16 (struct oxygen*,int ,int) ;
 int pcm1796_init (struct oxygen*) ;
 int snd_component_add (int ,char*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_hdmi_init (struct oxygen*,int *) ;
 int xonar_init_cs53x1 (struct oxygen*) ;
 int xonar_init_ext_power (struct oxygen*) ;

__attribute__((used)) static void xonar_hdav_init(struct oxygen *chip)
{
 struct xonar_hdav *data = chip->model_data;

 oxygen_write16(chip, OXYGEN_2WIRE_BUS_STATUS,
         OXYGEN_2WIRE_LENGTH_8 |
         OXYGEN_2WIRE_INTERRUPT_MASK |
         OXYGEN_2WIRE_SPEED_STANDARD);

 data->pcm179x.generic.anti_pop_delay = 100;
 data->pcm179x.generic.output_enable_bit = GPIO_HDAV_OUTPUT_ENABLE;
 data->pcm179x.generic.ext_power_reg = OXYGEN_GPI_DATA;
 data->pcm179x.generic.ext_power_int_reg = OXYGEN_GPI_INTERRUPT_MASK;
 data->pcm179x.generic.ext_power_bit = GPI_EXT_POWER;
 data->pcm179x.dacs = chip->model.dac_channels_mixer / 2;
 data->pcm179x.h6 = chip->model.dac_channels_mixer > 2;

 pcm1796_init(chip);

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
     GPIO_HDAV_MAGIC | GPIO_INPUT_ROUTE);
 oxygen_clear_bits16(chip, OXYGEN_GPIO_DATA, GPIO_INPUT_ROUTE);

 xonar_init_cs53x1(chip);
 xonar_init_ext_power(chip);
 xonar_hdmi_init(chip, &data->hdmi);
 xonar_enable_output(chip);

 snd_component_add(chip->card, "PCM1796");
 snd_component_add(chip->card, "CS5381");
}
