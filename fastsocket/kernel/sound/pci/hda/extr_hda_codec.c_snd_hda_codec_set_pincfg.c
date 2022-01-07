
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int driver_pins; } ;
typedef int hda_nid_t ;


 int snd_hda_add_pincfg (struct hda_codec*,int *,int ,unsigned int) ;

int snd_hda_codec_set_pincfg(struct hda_codec *codec,
        hda_nid_t nid, unsigned int cfg)
{
 return snd_hda_add_pincfg(codec, &codec->driver_pins, nid, cfg);
}
