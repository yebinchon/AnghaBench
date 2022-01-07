
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int anti_pop_delay; } ;
struct xonar_pcm179x {int h6; int has_cs2000; int broken_i2c; int * cs2000_regs; TYPE_2__ generic; } ;
struct TYPE_3__ {int dac_channels_mixer; } ;
struct oxygen {int card; TYPE_1__ model; struct xonar_pcm179x* model_data; } ;


 size_t CS2000_FUN_CFG_1 ;
 int CS2000_REF_CLK_DIV_1 ;
 int MCLK_256 ;
 int MCLK_512 ;
 int OXYGEN_I2S_A_FORMAT ;
 int OXYGEN_I2S_BCLK_64 ;
 int OXYGEN_I2S_BITS_16 ;
 int OXYGEN_I2S_FORMAT_I2S ;
 int OXYGEN_I2S_MASTER ;
 int OXYGEN_I2S_MCLK (int ) ;
 int OXYGEN_RATE_48000 ;
 int cs2000_registers_init (struct oxygen*) ;
 int oxygen_write16 (struct oxygen*,int ,int) ;
 int snd_component_add (int ,char*) ;
 int xonar_st_init_common (struct oxygen*) ;
 int xonar_st_init_i2c (struct oxygen*) ;

__attribute__((used)) static void xonar_st_init(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;

 data->generic.anti_pop_delay = 100;
 data->h6 = chip->model.dac_channels_mixer > 2;
 data->has_cs2000 = 1;
 data->cs2000_regs[CS2000_FUN_CFG_1] = CS2000_REF_CLK_DIV_1;
 data->broken_i2c = 1;

 oxygen_write16(chip, OXYGEN_I2S_A_FORMAT,
         OXYGEN_RATE_48000 |
         OXYGEN_I2S_FORMAT_I2S |
         OXYGEN_I2S_MCLK(data->h6 ? MCLK_256 : MCLK_512) |
         OXYGEN_I2S_BITS_16 |
         OXYGEN_I2S_MASTER |
         OXYGEN_I2S_BCLK_64);

 xonar_st_init_i2c(chip);
 cs2000_registers_init(chip);
 xonar_st_init_common(chip);

 snd_component_add(chip->card, "CS2000");
}
