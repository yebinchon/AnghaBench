
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int snd_hda_codec_resume_amp (struct hda_codec*) ;
 int snd_hda_codec_resume_cache (struct hda_codec*) ;

void snd_hda_codec_flush_cache(struct hda_codec *codec)
{
 snd_hda_codec_resume_amp(codec);
 snd_hda_codec_resume_cache(codec);
}
