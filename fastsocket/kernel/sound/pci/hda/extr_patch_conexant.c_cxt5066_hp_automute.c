
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int hp_present; } ;


 int HP_PRESENT_PORT_A ;
 int HP_PRESENT_PORT_D ;
 int cxt5066_update_speaker (struct hda_codec*) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;
 int snd_printdd (char*,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void cxt5066_hp_automute(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 unsigned int portA, portD;


 portA = snd_hda_jack_detect(codec, 0x19);


 portD = snd_hda_jack_detect(codec, 0x1c);

 spec->hp_present = portA ? HP_PRESENT_PORT_A : 0;
 spec->hp_present |= portD ? HP_PRESENT_PORT_D : 0;
 snd_printdd("CXT5066: hp automute portA=%x portD=%x present=%d\n",
  portA, portD, spec->hp_present);
 cxt5066_update_speaker(codec);
}
