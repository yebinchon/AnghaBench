
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {int dummy; } ;


 int GCR ;
 int GCR_CDONE_IE ;
 int GCR_PRIRDY_IEN ;
 int GCR_SDONE_IE ;
 int GCR_SECRDY_IEN ;

void pxa2xx_ac97_finish_reset(struct snd_ac97 *ac97)
{
 GCR &= ~(GCR_PRIRDY_IEN|GCR_SECRDY_IEN);
 GCR |= GCR_SDONE_IE|GCR_CDONE_IE;
}
