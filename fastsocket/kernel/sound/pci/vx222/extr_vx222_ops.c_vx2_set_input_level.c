
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_vx222 {int mic_level; int regSELMIC; scalar_t__* input_level; } ;


 int DATA ;
 int MICRO_SELECT_PREAMPLI_MASK ;
 int MICRO_SELECT_PREAMPLI_OFFSET ;
 int RUER ;
 int SELMIC ;
 scalar_t__ V2_MICRO_LEVEL_RANGE ;
 int VX_DATA_CODEC_MASK ;
 scalar_t__ snd_BUG_ON (int) ;
 int vx_inl (struct snd_vx222*,int ) ;
 int vx_outl (struct snd_vx222*,int ,int) ;

__attribute__((used)) static void vx2_set_input_level(struct snd_vx222 *chip)
{
 int i, miclevel, preamp;
 unsigned int data;

 miclevel = chip->mic_level;
 miclevel += V2_MICRO_LEVEL_RANGE;
 preamp = 0;
        while (miclevel > 210) {
  preamp++;
  miclevel -= (18 * 2);
        }
 if (snd_BUG_ON(preamp >= 4))
  return;


 chip->regSELMIC &= ~MICRO_SELECT_PREAMPLI_MASK;
 chip->regSELMIC |= (preamp << MICRO_SELECT_PREAMPLI_OFFSET) & MICRO_SELECT_PREAMPLI_MASK;
 vx_outl(chip, SELMIC, chip->regSELMIC);

 data = (unsigned int)miclevel << 16 |
  (unsigned int)chip->input_level[1] << 8 |
  (unsigned int)chip->input_level[0];
 vx_inl(chip, DATA);


 for (i = 0; i < 32; i++, data <<= 1)
  vx_outl(chip, DATA, ((data & 0x80000000) ? VX_DATA_CODEC_MASK : 0));

 vx_inl(chip, RUER);
}
