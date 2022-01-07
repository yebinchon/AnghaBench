
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ctl_elem_value {int dummy; } ;
struct hda_codec {int dummy; } ;


 int alc_inv_dmic_sync (struct hda_codec*,int) ;

__attribute__((used)) static void alc_inv_dmic_hook(struct hda_codec *codec,
        struct snd_ctl_elem_value *ucontrol)
{
 alc_inv_dmic_sync(codec, 0);
}
