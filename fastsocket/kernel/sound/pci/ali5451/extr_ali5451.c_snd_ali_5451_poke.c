
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_REG (struct snd_ali*,unsigned int) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static inline void snd_ali_5451_poke(struct snd_ali *codec,
         unsigned int port,
         unsigned int val)
{
 outl((unsigned int)val, ALI_REG(codec, port));
}
