
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct snd_emu10k1_fx8010_ctl* p; } ;
struct snd_kcontrol {TYPE_1__ tlv; scalar_t__ private_value; } ;
struct snd_emu10k1_fx8010_ctl {int list; } ;


 int kfree (struct snd_emu10k1_fx8010_ctl*) ;
 int list_del (int *) ;

__attribute__((used)) static void snd_emu10k1_ctl_private_free(struct snd_kcontrol *kctl)
{
 struct snd_emu10k1_fx8010_ctl *ctl;

 ctl = (struct snd_emu10k1_fx8010_ctl *) kctl->private_value;
 kctl->private_value = 0;
 list_del(&ctl->list);
 kfree(ctl);
 if (kctl->tlv.p)
  kfree(kctl->tlv.p);
}
