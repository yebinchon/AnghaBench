
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int* idx; void** ctls; int * path; } ;
struct hda_codec {scalar_t__ single_adc_amp; } ;
typedef int hda_nid_t ;


 int EINVAL ;
 void* HDA_COMPOSE_AMP_VAL (int ,int,int,int ) ;
 int HDA_INPUT ;
 int HDA_OUTPUT ;
 size_t NID_PATH_MUTE_CTL ;
 size_t NID_PATH_VOL_CTL ;
 scalar_t__ nid_has_mute (struct hda_codec*,int ,int ) ;
 scalar_t__ nid_has_volume (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int parse_capvol_in_path(struct hda_codec *codec, struct nid_path *path)
{
 hda_nid_t nid;
 int i, depth;

 path->ctls[NID_PATH_VOL_CTL] = path->ctls[NID_PATH_MUTE_CTL] = 0;
 for (depth = 0; depth < 3; depth++) {
  if (depth >= path->depth)
   return -EINVAL;
  i = path->depth - depth - 1;
  nid = path->path[i];
  if (!path->ctls[NID_PATH_VOL_CTL]) {
   if (nid_has_volume(codec, nid, HDA_OUTPUT))
    path->ctls[NID_PATH_VOL_CTL] =
     HDA_COMPOSE_AMP_VAL(nid, 3, 0, HDA_OUTPUT);
   else if (nid_has_volume(codec, nid, HDA_INPUT)) {
    int idx = path->idx[i];
    if (!depth && codec->single_adc_amp)
     idx = 0;
    path->ctls[NID_PATH_VOL_CTL] =
     HDA_COMPOSE_AMP_VAL(nid, 3, idx, HDA_INPUT);
   }
  }
  if (!path->ctls[NID_PATH_MUTE_CTL]) {
   if (nid_has_mute(codec, nid, HDA_OUTPUT))
    path->ctls[NID_PATH_MUTE_CTL] =
     HDA_COMPOSE_AMP_VAL(nid, 3, 0, HDA_OUTPUT);
   else if (nid_has_mute(codec, nid, HDA_INPUT)) {
    int idx = path->idx[i];
    if (!depth && codec->single_adc_amp)
     idx = 0;
    path->ctls[NID_PATH_MUTE_CTL] =
     HDA_COMPOSE_AMP_VAL(nid, 3, idx, HDA_INPUT);
   }
  }
 }
 return 0;
}
