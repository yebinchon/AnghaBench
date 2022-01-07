
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int active; } ;
struct hda_gen_spec {int multi_ios; TYPE_1__* multi_io; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int ctl_in; int pin; } ;


 int aamix_default (struct hda_gen_spec*) ;
 struct nid_path* get_multiio_path (struct hda_codec*,int) ;
 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int ,int ) ;
 int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;

__attribute__((used)) static void init_multi_io(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->multi_ios; i++) {
  hda_nid_t pin = spec->multi_io[i].pin;
  struct nid_path *path;
  path = get_multiio_path(codec, i);
  if (!path)
   continue;
  if (!spec->multi_io[i].ctl_in)
   spec->multi_io[i].ctl_in =
    snd_hda_codec_get_pin_target(codec, pin);
  snd_hda_activate_path(codec, path, path->active,
          aamix_default(spec));
 }
}
