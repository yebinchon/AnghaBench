
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int active; int depth; int * idx; scalar_t__* multi; int * path; } ;
struct hda_gen_spec {scalar_t__ power_down_unused; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int AC_PWRST_D0 ;
 int AC_VERB_SET_CONNECT_SEL ;
 int AC_VERB_SET_POWER_STATE ;
 int activate_amp_in (struct hda_codec*,struct nid_path*,int,int,int) ;
 int activate_amp_out (struct hda_codec*,struct nid_path*,int,int) ;
 scalar_t__ has_amp_in (struct hda_codec*,struct nid_path*,int) ;
 scalar_t__ has_amp_out (struct hda_codec*,struct nid_path*,int) ;
 int snd_hda_check_power_state (struct hda_codec*,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int ,int ,int ,int ) ;

void snd_hda_activate_path(struct hda_codec *codec, struct nid_path *path,
      bool enable, bool add_aamix)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 if (!enable)
  path->active = 0;

 for (i = path->depth - 1; i >= 0; i--) {
  hda_nid_t nid = path->path[i];
  if (enable && spec->power_down_unused) {

   if (!snd_hda_check_power_state(codec, nid, AC_PWRST_D0))
    snd_hda_codec_write(codec, nid, 0,
          AC_VERB_SET_POWER_STATE,
          AC_PWRST_D0);
  }
  if (enable && path->multi[i])
   snd_hda_codec_write_cache(codec, nid, 0,
         AC_VERB_SET_CONNECT_SEL,
         path->idx[i]);
  if (has_amp_in(codec, path, i))
   activate_amp_in(codec, path, i, enable, add_aamix);
  if (has_amp_out(codec, path, i))
   activate_amp_out(codec, path, i, enable);
 }

 if (enable)
  path->active = 1;
}
