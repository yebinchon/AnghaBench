
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nid_path {int active; } ;
struct TYPE_4__ {int dig_outs; void* dig_in_pin; int * dig_out_type; void** dig_out_pins; } ;
struct TYPE_3__ {void** slave_dig_outs; void* dig_out_nid; } ;
struct hda_gen_spec {void* digin_path; void* dig_in_nid; TYPE_2__ autocfg; void** slave_dig_outs; TYPE_1__ multiout; int dig_out_type; void** digout_paths; } ;
struct hda_codec {int num_nodes; void* start_nid; struct hda_gen_spec* spec; } ;
typedef void* hda_nid_t ;


 unsigned int AC_WCAP_DIGITAL ;
 scalar_t__ AC_WID_AUD_IN ;
 int ARRAY_SIZE (void**) ;
 int PIN_IN ;
 int PIN_OUT ;
 unsigned int get_wcaps (struct hda_codec*,void*) ;
 scalar_t__ get_wcaps_type (unsigned int) ;
 void* look_for_dac (struct hda_codec*,void*,int) ;
 int print_nid_path (char*,struct nid_path*) ;
 int set_pin_target (struct hda_codec*,void*,int ,int) ;
 struct nid_path* snd_hda_add_new_path (struct hda_codec*,void*,void*,int ) ;
 void* snd_hda_get_path_idx (struct hda_codec*,struct nid_path*) ;

__attribute__((used)) static void parse_digital(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct nid_path *path;
 int i, nums;
 hda_nid_t dig_nid, pin;


 nums = 0;
 for (i = 0; i < spec->autocfg.dig_outs; i++) {
  pin = spec->autocfg.dig_out_pins[i];
  dig_nid = look_for_dac(codec, pin, 1);
  if (!dig_nid)
   continue;
  path = snd_hda_add_new_path(codec, dig_nid, pin, 0);
  if (!path)
   continue;
  print_nid_path("digout", path);
  path->active = 1;
  spec->digout_paths[i] = snd_hda_get_path_idx(codec, path);
  set_pin_target(codec, pin, PIN_OUT, 0);
  if (!nums) {
   spec->multiout.dig_out_nid = dig_nid;
   spec->dig_out_type = spec->autocfg.dig_out_type[0];
  } else {
   spec->multiout.slave_dig_outs = spec->slave_dig_outs;
   if (nums >= ARRAY_SIZE(spec->slave_dig_outs) - 1)
   break;
   spec->slave_dig_outs[nums - 1] = dig_nid;
  }
  nums++;
 }

 if (spec->autocfg.dig_in_pin) {
  pin = spec->autocfg.dig_in_pin;
  dig_nid = codec->start_nid;
  for (i = 0; i < codec->num_nodes; i++, dig_nid++) {
   unsigned int wcaps = get_wcaps(codec, dig_nid);
   if (get_wcaps_type(wcaps) != AC_WID_AUD_IN)
    continue;
   if (!(wcaps & AC_WCAP_DIGITAL))
    continue;
   path = snd_hda_add_new_path(codec, pin, dig_nid, 0);
   if (path) {
    print_nid_path("digin", path);
    path->active = 1;
    spec->dig_in_nid = dig_nid;
    spec->digin_path = snd_hda_get_path_idx(codec, path);
    set_pin_target(codec, pin, PIN_IN, 0);
    break;
   }
  }
 }
}
