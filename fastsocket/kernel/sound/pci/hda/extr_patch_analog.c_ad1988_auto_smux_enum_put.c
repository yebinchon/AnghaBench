
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct nid_path {int dummy; } ;
struct hda_codec {int cached_write; int control_mutex; struct ad198x_spec* spec; } ;
struct ad198x_spec {unsigned int cur_smux; int * smux_paths; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int,int) ;
 int snd_hda_codec_flush_cache (struct hda_codec*) ;
 int snd_hda_get_num_conns (struct hda_codec*,int) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ad1988_auto_smux_enum_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ad198x_spec *spec = codec->spec;
 unsigned int val = ucontrol->value.enumerated.item[0];
 struct nid_path *path;
 int num_conns = snd_hda_get_num_conns(codec, 0x0b) + 1;

 if (val >= num_conns)
  return -EINVAL;
 if (spec->cur_smux == val)
  return 0;

 mutex_lock(&codec->control_mutex);
 codec->cached_write = 1;
 path = snd_hda_get_path_from_idx(codec,
      spec->smux_paths[spec->cur_smux]);
 if (path)
  snd_hda_activate_path(codec, path, 0, 1);
 path = snd_hda_get_path_from_idx(codec, spec->smux_paths[val]);
 if (path)
  snd_hda_activate_path(codec, path, 1, 1);
 spec->cur_smux = val;
 codec->cached_write = 0;
 mutex_unlock(&codec->control_mutex);
 snd_hda_codec_flush_cache(codec);
 return 1;
}
