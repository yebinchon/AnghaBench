
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
struct TYPE_2__ {int card; } ;


 int ENOMEM ;
 struct snd_kcontrol* snd_ac97_find_mixer_ctl (struct snd_ac97*,char const*) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 int snd_ctl_add_slave (struct snd_kcontrol*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_make_virtual_master (char*,unsigned int const*) ;
 int snd_printdd (char*,char const*) ;

__attribute__((used)) static int snd_ac97_add_vmaster(struct snd_ac97 *ac97, char *name,
    const unsigned int *tlv, const char **slaves)
{
 struct snd_kcontrol *kctl;
 const char **s;
 int err;

 kctl = snd_ctl_make_virtual_master(name, tlv);
 if (!kctl)
  return -ENOMEM;
 err = snd_ctl_add(ac97->bus->card, kctl);
 if (err < 0)
  return err;

 for (s = slaves; *s; s++) {
  struct snd_kcontrol *sctl;

  sctl = snd_ac97_find_mixer_ctl(ac97, *s);
  if (!sctl) {
   snd_printdd("Cannot find slave %s, skipped\n", *s);
   continue;
  }
  err = snd_ctl_add_slave(kctl, sctl);
  if (err < 0)
   return err;
 }
 return 0;
}
