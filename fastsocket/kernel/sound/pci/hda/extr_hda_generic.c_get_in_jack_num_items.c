
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {scalar_t__ add_jack_modes; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int get_vref_caps (struct hda_codec*,int ) ;
 int hweight32 (int ) ;

__attribute__((used)) static int get_in_jack_num_items(struct hda_codec *codec, hda_nid_t pin)
{
 struct hda_gen_spec *spec = codec->spec;
 int nitems = 0;
 if (spec->add_jack_modes)
  nitems = hweight32(get_vref_caps(codec, pin));
 return nitems ? nitems : 1;
}
