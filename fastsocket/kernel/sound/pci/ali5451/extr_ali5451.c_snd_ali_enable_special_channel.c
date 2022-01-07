
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_GLOBAL_CONTROL ;
 int ALI_REG (struct snd_ali*,int ) ;
 unsigned long inl (int ) ;
 int outl (unsigned long,int ) ;

__attribute__((used)) static void snd_ali_enable_special_channel(struct snd_ali *codec,
        unsigned int channel)
{
 unsigned long dwVal;

 dwVal = inl(ALI_REG(codec, ALI_GLOBAL_CONTROL));
 dwVal |= 1 << (channel & 0x0000001f);
 outl(dwVal, ALI_REG(codec, ALI_GLOBAL_CONTROL));
}
