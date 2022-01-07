
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; int name; } ;
struct snd_kcontrol {scalar_t__ private_value; TYPE_1__ id; } ;


 int jack_detect_kctl ;
 struct snd_kcontrol* snd_ctl_new1 (int *,void*) ;
 int snprintf (int ,int,char*,char const*) ;

struct snd_kcontrol *
snd_kctl_jack_new(const char *name, int idx, void *private_data)
{
 struct snd_kcontrol *kctl;
 kctl = snd_ctl_new1(&jack_detect_kctl, private_data);
 if (!kctl)
  return ((void*)0);
 snprintf(kctl->id.name, sizeof(kctl->id.name), "%s Jack", name);
 kctl->id.index = idx;
 kctl->private_value = 0;
 return kctl;
}
