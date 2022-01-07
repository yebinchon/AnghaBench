
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int * path; scalar_t__ active; } ;
struct hda_gen_spec {int power_down_unused; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int AC_PWRST_D3 ;
 int AC_VERB_GET_POWER_STATE ;
 int AC_VERB_SET_POWER_STATE ;
 int is_active_nid_for_any (struct hda_codec*,int ) ;
 int msleep (int) ;
 int snd_hda_check_power_state (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void path_power_down_sync(struct hda_codec *codec, struct nid_path *path)
{
 struct hda_gen_spec *spec = codec->spec;
 bool changed = 0;
 int i;

 if (!spec->power_down_unused || path->active)
  return;

 for (i = 0; i < path->depth; i++) {
  hda_nid_t nid = path->path[i];
  if (!snd_hda_check_power_state(codec, nid, AC_PWRST_D3) &&
      !is_active_nid_for_any(codec, nid)) {
   snd_hda_codec_write(codec, nid, 0,
         AC_VERB_SET_POWER_STATE,
         AC_PWRST_D3);
   changed = 1;
  }
 }

 if (changed) {
  msleep(10);
  snd_hda_codec_read(codec, path->path[0], 0,
       AC_VERB_GET_POWER_STATE, 0);
 }
}
