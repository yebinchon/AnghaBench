
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_GLOBAL_CONTROL ;
 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_SPDIF_IN_CHANNEL ;
 unsigned int ALI_SPDIF_IN_SUPPORT ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;
 int snd_ali_disable_special_channel (struct snd_ali*,int ) ;

__attribute__((used)) static void snd_ali_disable_spdif_in(struct snd_ali *codec)
{
 unsigned int dwVal;

 dwVal = inl(ALI_REG(codec, ALI_GLOBAL_CONTROL));
 dwVal &= ~ALI_SPDIF_IN_SUPPORT;
 outl(dwVal, ALI_REG(codec, ALI_GLOBAL_CONTROL));

 snd_ali_disable_special_channel(codec, ALI_SPDIF_IN_CHANNEL);
}
