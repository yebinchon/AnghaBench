
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xonar_pcm179x {scalar_t__ h6; } ;
struct oxygen {struct xonar_pcm179x* model_data; } ;


 int CS2000_FUN_CFG_1 ;
 int CS2000_REF_CLK_DIV_1 ;
 int CS2000_REF_CLK_DIV_2 ;
 int MCLK_256 ;
 int MCLK_512 ;
 int OXYGEN_I2S_A_FORMAT ;
 int OXYGEN_I2S_MCLK (int ) ;
 int OXYGEN_I2S_MCLK_MASK ;
 int OXYGEN_I2S_RATE_MASK ;
 int OXYGEN_RATE_32000 ;
 int OXYGEN_RATE_44100 ;
 int OXYGEN_RATE_48000 ;
 int cs2000_write_cached (struct oxygen*,int ,int ) ;
 int msleep (int) ;
 int oxygen_write16_masked (struct oxygen*,int ,int ,int) ;

__attribute__((used)) static void update_cs2000_rate(struct oxygen *chip, unsigned int rate)
{
 struct xonar_pcm179x *data = chip->model_data;
 u8 rate_mclk, reg;

 switch (rate) {
 case 32000:
 case 64000:
  rate_mclk = OXYGEN_RATE_32000;
  break;
 case 44100:
 case 88200:
 case 176400:
  rate_mclk = OXYGEN_RATE_44100;
  break;
 default:
 case 48000:
 case 96000:
 case 192000:
  rate_mclk = OXYGEN_RATE_48000;
  break;
 }

 if (rate <= 96000 && (rate > 48000 || data->h6)) {
  rate_mclk |= OXYGEN_I2S_MCLK(MCLK_256);
  reg = CS2000_REF_CLK_DIV_1;
 } else {
  rate_mclk |= OXYGEN_I2S_MCLK(MCLK_512);
  reg = CS2000_REF_CLK_DIV_2;
 }

 oxygen_write16_masked(chip, OXYGEN_I2S_A_FORMAT, rate_mclk,
         OXYGEN_I2S_RATE_MASK | OXYGEN_I2S_MCLK_MASK);
 cs2000_write_cached(chip, CS2000_FUN_CFG_1, reg);
 msleep(3);
}
