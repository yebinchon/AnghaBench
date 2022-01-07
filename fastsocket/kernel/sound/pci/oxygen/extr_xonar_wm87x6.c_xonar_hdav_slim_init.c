
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int anti_pop_delay; int output_enable_bit; } ;
struct xonar_wm87x6 {int hdmi; TYPE_1__ generic; } ;
struct oxygen {int card; struct xonar_wm87x6* model_data; } ;


 int GPIO_SLIM_FIRMWARE_CLK ;
 int GPIO_SLIM_FIRMWARE_DATA ;
 int GPIO_SLIM_HDMI_DISABLE ;
 int GPIO_SLIM_OUTPUT_ENABLE ;
 int OXYGEN_GPIO_CONTROL ;
 int oxygen_set_bits16 (struct oxygen*,int ,int) ;
 int snd_component_add (int ,char*) ;
 int wm8776_init (struct oxygen*) ;
 int xonar_enable_output (struct oxygen*) ;
 int xonar_hdmi_init (struct oxygen*,int *) ;

__attribute__((used)) static void xonar_hdav_slim_init(struct oxygen *chip)
{
 struct xonar_wm87x6 *data = chip->model_data;

 data->generic.anti_pop_delay = 300;
 data->generic.output_enable_bit = GPIO_SLIM_OUTPUT_ENABLE;

 wm8776_init(chip);

 oxygen_set_bits16(chip, OXYGEN_GPIO_CONTROL,
     GPIO_SLIM_HDMI_DISABLE |
     GPIO_SLIM_FIRMWARE_CLK |
     GPIO_SLIM_FIRMWARE_DATA);

 xonar_hdmi_init(chip, &data->hdmi);
 xonar_enable_output(chip);

 snd_component_add(chip->card, "WM8776");
}
