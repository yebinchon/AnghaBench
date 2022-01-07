
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int init_amp; } ;
typedef int hda_nid_t ;


 int ALC_INIT_DEFAULT ;
 int alc_subsystem_id (struct hda_codec*,int const,int const,int const,int const) ;
 int snd_printd (char*) ;

__attribute__((used)) static void alc_ssid_check(struct hda_codec *codec, const hda_nid_t *ports)
{
 if (!alc_subsystem_id(codec, ports[0], ports[1], ports[2], ports[3])) {
  struct alc_spec *spec = codec->spec;
  snd_printd("realtek: "
      "Enable default setup for auto mode as fallback\n");
  spec->init_amp = ALC_INIT_DEFAULT;
 }
}
