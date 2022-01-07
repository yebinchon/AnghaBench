
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_EA_SLOT_MASK ;
 int AC97_EA_SPDIF ;
 int AC97_EA_VRA ;
 int AC97_EXTENDED_STATUS ;
 int AC97_SC_CC_MASK ;
 int AC97_SC_SPSR_32K ;
 int AC97_SC_SPSR_44K ;
 int AC97_SC_SPSR_48K ;
 int AC97_SC_SPSR_MASK ;
 int AC97_SPDIF_CONTROL ;
 int AUDIO_CCMASK ;
 int AUDIO_DIGITAL ;
 int AUDIO_DRS ;
 int AUDIO_PRO ;
 int EINVAL ;
 int stub1 (struct ac97_codec*,int ) ;
 int stub2 (struct ac97_codec*,int ) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ,int) ;
 int stub5 (struct ac97_codec*,int ) ;
 int stub6 (struct ac97_codec*,int ,int) ;
 int stub7 (struct ac97_codec*,int ) ;
 int stub8 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int generic_digital_control(struct ac97_codec *codec, int slots, int rate, int mode)
{
 u16 reg;

 reg = codec->codec_read(codec, AC97_SPDIF_CONTROL);

 switch(rate)
 {

  default:
  case 0:
   reg = codec->codec_read(codec, AC97_EXTENDED_STATUS);
   codec->codec_write(codec, AC97_EXTENDED_STATUS, (reg & ~AC97_EA_SPDIF));
   if(rate == 0)
    return 0;
   return -EINVAL;
  case 1:
   reg = (reg & AC97_SC_SPSR_MASK) | AC97_SC_SPSR_48K;
   break;
  case 2:
   reg = (reg & AC97_SC_SPSR_MASK) | AC97_SC_SPSR_44K;
   break;
  case 3:
   reg = (reg & AC97_SC_SPSR_MASK) | AC97_SC_SPSR_32K;
   break;
 }

 reg &= ~AC97_SC_CC_MASK;
 reg |= (mode & AUDIO_CCMASK) << 6;

 if(mode & AUDIO_DIGITAL)
  reg |= 2;
 if(mode & AUDIO_PRO)
  reg |= 1;
 if(mode & AUDIO_DRS)
  reg |= 0x4000;

 codec->codec_write(codec, AC97_SPDIF_CONTROL, reg);

 reg = codec->codec_read(codec, AC97_EXTENDED_STATUS);
 reg &= (AC97_EA_SLOT_MASK);
 reg |= AC97_EA_VRA | AC97_EA_SPDIF | slots;
 codec->codec_write(codec, AC97_EXTENDED_STATUS, reg);

 reg = codec->codec_read(codec, AC97_EXTENDED_STATUS);
 if(!(reg & 0x0400))
 {
  codec->codec_write(codec, AC97_EXTENDED_STATUS, reg & ~ AC97_EA_SPDIF);
  return -EINVAL;
 }
 return 0;
}
