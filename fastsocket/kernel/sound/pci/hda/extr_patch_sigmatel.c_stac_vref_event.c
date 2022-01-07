
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int private_data; } ;
struct hda_codec {int afg; } ;


 int AC_VERB_GET_GPIO_DATA ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int,int) ;

__attribute__((used)) static void stac_vref_event(struct hda_codec *codec, struct hda_jack_tbl *event)
{
 unsigned int data;

 data = snd_hda_codec_read(codec, codec->afg, 0,
      AC_VERB_GET_GPIO_DATA, 0);

 snd_hda_codec_write(codec, codec->afg, 0, 0x7e0,
       !!(data & (1 << event->private_data)));
}
