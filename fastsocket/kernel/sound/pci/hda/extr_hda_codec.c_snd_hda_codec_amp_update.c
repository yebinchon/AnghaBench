
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int codec_amp_update (struct hda_codec*,int ,int,int,int,int,int,int) ;

int snd_hda_codec_amp_update(struct hda_codec *codec, hda_nid_t nid, int ch,
        int direction, int idx, int mask, int val)
{
 return codec_amp_update(codec, nid, ch, direction, idx, mask, val, 0);
}
