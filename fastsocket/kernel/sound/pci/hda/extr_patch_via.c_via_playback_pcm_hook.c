
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct hda_pcm_stream {int dummy; } ;
struct hda_codec {int dummy; } ;


 int analog_low_current_mode (struct hda_codec*) ;
 int vt1708_update_hp_work (struct hda_codec*) ;

__attribute__((used)) static void via_playback_pcm_hook(struct hda_pcm_stream *hinfo,
      struct hda_codec *codec,
      struct snd_pcm_substream *substream,
      int action)
{
 analog_low_current_mode(codec);
 vt1708_update_hp_work(codec);
}
