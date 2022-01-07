
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;


 unsigned int ENDLP_IE ;
 unsigned int MIDLP_IE ;
 int T4D_LFO_GC_CIR ;
 int TRID_REG (struct snd_trident*,int ) ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static void snd_trident_disable_eso(struct snd_trident * trident)
{
 unsigned int tmp;

 tmp = inl(TRID_REG(trident, T4D_LFO_GC_CIR));
 tmp &= ~ENDLP_IE;
 tmp &= ~MIDLP_IE;
 outl(tmp, TRID_REG(trident, T4D_LFO_GC_CIR));
}
