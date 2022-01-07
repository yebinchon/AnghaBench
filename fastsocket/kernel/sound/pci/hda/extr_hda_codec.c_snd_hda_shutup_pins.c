
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_pincfg {int nid; } ;
struct TYPE_4__ {int used; } ;
struct hda_codec {int pins_shutup; TYPE_2__ init_pins; TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ shutdown; } ;


 int AC_VERB_SET_PIN_WIDGET_CONTROL ;
 struct hda_pincfg* snd_array_elem (TYPE_2__*,int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

void snd_hda_shutup_pins(struct hda_codec *codec)
{
 int i;



 if (codec->bus->shutdown)
  return;
 for (i = 0; i < codec->init_pins.used; i++) {
  struct hda_pincfg *pin = snd_array_elem(&codec->init_pins, i);

  snd_hda_codec_read(codec, pin->nid, 0,
       AC_VERB_SET_PIN_WIDGET_CONTROL, 0);
 }
 codec->pins_shutup = 1;
}
