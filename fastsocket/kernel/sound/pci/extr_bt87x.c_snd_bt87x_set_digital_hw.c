
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rate_max; int rate_min; int rates; } ;
struct snd_pcm_runtime {TYPE_2__ hw; } ;
struct TYPE_3__ {int dig_rate; } ;
struct snd_bt87x {int reg_control; TYPE_1__ board; } ;


 int CTL_A_PWRDN ;
 int CTL_DA_IOM_DA ;
 TYPE_2__ snd_bt87x_digital_hw ;
 int snd_pcm_rate_to_rate_bit (int ) ;

__attribute__((used)) static int snd_bt87x_set_digital_hw(struct snd_bt87x *chip, struct snd_pcm_runtime *runtime)
{
 chip->reg_control |= CTL_DA_IOM_DA | CTL_A_PWRDN;
 runtime->hw = snd_bt87x_digital_hw;
 runtime->hw.rates = snd_pcm_rate_to_rate_bit(chip->board.dig_rate);
 runtime->hw.rate_min = chip->board.dig_rate;
 runtime->hw.rate_max = chip->board.dig_rate;
 return 0;
}
