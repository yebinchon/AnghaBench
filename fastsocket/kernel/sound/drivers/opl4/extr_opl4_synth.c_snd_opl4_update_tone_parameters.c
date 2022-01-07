
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl4 {int dummy; } ;
struct opl4_voice {TYPE_1__* sound; scalar_t__ number; } ;
struct TYPE_2__ {int reg_tremolo; int reg_release_correction; int reg_level_decay2; int reg_attack_decay1; } ;


 scalar_t__ OPL4_REG_ATTACK_DECAY1 ;
 scalar_t__ OPL4_REG_LEVEL_DECAY2 ;
 scalar_t__ OPL4_REG_RELEASE_CORRECTION ;
 scalar_t__ OPL4_REG_TREMOLO ;
 int snd_opl4_write (struct snd_opl4*,scalar_t__,int ) ;

__attribute__((used)) static void snd_opl4_update_tone_parameters(struct snd_opl4 *opl4,
         struct opl4_voice *voice)
{
 snd_opl4_write(opl4, OPL4_REG_ATTACK_DECAY1 + voice->number,
         voice->sound->reg_attack_decay1);
 snd_opl4_write(opl4, OPL4_REG_LEVEL_DECAY2 + voice->number,
         voice->sound->reg_level_decay2);
 snd_opl4_write(opl4, OPL4_REG_RELEASE_CORRECTION + voice->number,
         voice->sound->reg_release_correction);
 snd_opl4_write(opl4, OPL4_REG_TREMOLO + voice->number,
         voice->sound->reg_tremolo);
}
