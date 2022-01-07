
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int const* p; } ;
struct snd_kcontrol {TYPE_2__ tlv; } ;
struct snd_ctl_elem_id {int iface; int name; } ;
struct snd_ac97 {TYPE_1__* bus; } ;
typedef int sid ;
struct TYPE_3__ {int card; } ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 struct snd_kcontrol* snd_ctl_find_id (int ,struct snd_ctl_elem_id*) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void reset_tlv(struct snd_ac97 *ac97, const char *name,
        const unsigned int *tlv)
{
 struct snd_ctl_elem_id sid;
 struct snd_kcontrol *kctl;
 memset(&sid, 0, sizeof(sid));
 strcpy(sid.name, name);
 sid.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 kctl = snd_ctl_find_id(ac97->bus->card, &sid);
 if (kctl && kctl->tlv.p)
  kctl->tlv.p = tlv;
}
