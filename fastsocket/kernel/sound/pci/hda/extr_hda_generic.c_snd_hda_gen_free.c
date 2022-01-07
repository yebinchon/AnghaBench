
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int * spec; } ;


 int kfree (int *) ;
 int snd_hda_detach_beep_device (struct hda_codec*) ;
 int snd_hda_gen_spec_free (int *) ;

void snd_hda_gen_free(struct hda_codec *codec)
{
 snd_hda_detach_beep_device(codec);
 snd_hda_gen_spec_free(codec->spec);
 kfree(codec->spec);
 codec->spec = ((void*)0);
}
