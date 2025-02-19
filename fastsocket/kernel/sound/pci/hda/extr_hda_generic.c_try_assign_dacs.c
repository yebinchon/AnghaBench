
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int active; } ;
struct hda_gen_spec {int mixer_nid; int * private_dac_nids; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct badness_table {scalar_t__ no_dac; scalar_t__ no_primary_dac; scalar_t__ shared_surr_main; scalar_t__ shared_clfe; scalar_t__ shared_surr; scalar_t__ shared_primary; } ;
typedef int hda_nid_t ;


 scalar_t__ assign_out_path_ctls (struct hda_codec*,struct nid_path*) ;
 int get_primary_out (struct hda_codec*,int) ;
 int invalidate_nid_path (struct hda_codec*,int) ;
 scalar_t__ is_reachable_path (struct hda_codec*,int ,int ) ;
 int look_for_dac (struct hda_codec*,int ,int) ;
 struct nid_path* snd_hda_add_new_path (struct hda_codec*,int ,int ,int ) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;
 int snd_hda_get_path_idx (struct hda_codec*,struct nid_path*) ;
 int try_dac (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int try_assign_dacs(struct hda_codec *codec, int num_outs,
      const hda_nid_t *pins, hda_nid_t *dacs,
      int *path_idx,
      const struct badness_table *bad)
{
 struct hda_gen_spec *spec = codec->spec;
 int i, j;
 int badness = 0;
 hda_nid_t dac;

 if (!num_outs)
  return 0;

 for (i = 0; i < num_outs; i++) {
  struct nid_path *path;
  hda_nid_t pin = pins[i];

  path = snd_hda_get_path_from_idx(codec, path_idx[i]);
  if (path) {
   badness += assign_out_path_ctls(codec, path);
   continue;
  }

  dacs[i] = look_for_dac(codec, pin, 0);
  if (!dacs[i] && !i) {

   for (j = 1; j < num_outs; j++) {
    if (is_reachable_path(codec, dacs[j], pin)) {
     dacs[0] = dacs[j];
     dacs[j] = 0;
     invalidate_nid_path(codec, path_idx[j]);
     path_idx[j] = 0;
     break;
    }
   }
  }
  dac = dacs[i];
  if (!dac) {
   if (num_outs > 2)
    dac = try_dac(codec, get_primary_out(codec, i), pin);
   if (!dac)
    dac = try_dac(codec, dacs[0], pin);
   if (!dac)
    dac = try_dac(codec, get_primary_out(codec, i), pin);
   if (dac) {
    if (!i)
     badness += bad->shared_primary;
    else if (i == 1)
     badness += bad->shared_surr;
    else
     badness += bad->shared_clfe;
   } else if (is_reachable_path(codec, spec->private_dac_nids[0], pin)) {
    dac = spec->private_dac_nids[0];
    badness += bad->shared_surr_main;
   } else if (!i)
    badness += bad->no_primary_dac;
   else
    badness += bad->no_dac;
  }
  if (!dac)
   continue;
  path = snd_hda_add_new_path(codec, dac, pin, -spec->mixer_nid);
  if (!path && !i && spec->mixer_nid) {

   path = snd_hda_add_new_path(codec, dac, pin, 0);
  }
  if (!path) {
   dac = dacs[i] = 0;
   badness += bad->no_dac;
  } else {

   path->active = 1;
   path_idx[i] = snd_hda_get_path_idx(codec, path);
   badness += assign_out_path_ctls(codec, path);
  }
 }

 return badness;
}
