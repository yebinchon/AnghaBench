
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_verb {int param; int verb; scalar_t__ nid; } ;
struct hda_codec {int dummy; } ;


 int snd_hda_codec_write_cache (struct hda_codec*,scalar_t__,int ,int ,int ) ;

void snd_hda_sequence_write_cache(struct hda_codec *codec,
      const struct hda_verb *seq)
{
 for (; seq->nid; seq++)
  snd_hda_codec_write_cache(codec, seq->nid, 0, seq->verb,
       seq->param);
}
