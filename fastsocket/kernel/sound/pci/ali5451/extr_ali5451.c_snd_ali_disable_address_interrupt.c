
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_GC_CIR ;
 int ALI_REG (struct snd_ali*,int ) ;
 unsigned int ENDLP_IE ;
 unsigned int MIDLP_IE ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static void snd_ali_disable_address_interrupt(struct snd_ali *codec)
{
 unsigned int gc;

 gc = inl(ALI_REG(codec, ALI_GC_CIR));
 gc &= ~ENDLP_IE;
 gc &= ~MIDLP_IE;
 outl(gc, ALI_REG(codec, ALI_GC_CIR));
}
