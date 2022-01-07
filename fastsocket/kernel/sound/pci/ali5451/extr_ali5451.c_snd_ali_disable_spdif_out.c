
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_SCTRL ;
 unsigned char ALI_SPDIF_OUT_ENABLE ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int snd_ali_disable_spdif_chnout (struct snd_ali*) ;

__attribute__((used)) static void snd_ali_disable_spdif_out(struct snd_ali *codec)
{
 unsigned char bVal;

 bVal = inb(ALI_REG(codec, ALI_SCTRL));
 outb(bVal & ~ALI_SPDIF_OUT_ENABLE, ALI_REG(codec, ALI_SCTRL));

 snd_ali_disable_spdif_chnout(codec);
}
