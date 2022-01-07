
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unsol_event; } ;
struct hda_codec {TYPE_1__ patch_ops; struct conexant_spec* spec; } ;
struct conexant_spec {int auto_mic; } ;


 int AUTO_MIC_PORTB ;
 int AUTO_MIC_PORTC ;
 int CXT5051_PORTB_EVENT ;
 int CXT5051_PORTC_EVENT ;
 int conexant_init (struct hda_codec*) ;
 int cxt5051_hp_automute (struct hda_codec*) ;
 int cxt5051_init_mic_port (struct hda_codec*,int,int ) ;
 int cxt5051_portb_automic (struct hda_codec*) ;
 int cxt5051_portc_automic (struct hda_codec*) ;

__attribute__((used)) static int cxt5051_init(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;

 conexant_init(codec);

 if (spec->auto_mic & AUTO_MIC_PORTB)
  cxt5051_init_mic_port(codec, 0x17, CXT5051_PORTB_EVENT);
 if (spec->auto_mic & AUTO_MIC_PORTC)
  cxt5051_init_mic_port(codec, 0x18, CXT5051_PORTC_EVENT);

 if (codec->patch_ops.unsol_event) {
  cxt5051_hp_automute(codec);
  cxt5051_portb_automic(codec);
  cxt5051_portc_automic(codec);
 }
 return 0;
}
