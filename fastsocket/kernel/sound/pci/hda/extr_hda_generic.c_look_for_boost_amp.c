
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int depth; int * idx; int * path; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int HDA_COMPOSE_AMP_VAL (int ,int,int ,int ) ;
 int HDA_INPUT ;
 int HDA_OUTPUT ;
 scalar_t__ check_boost_vol (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static unsigned int look_for_boost_amp(struct hda_codec *codec,
           struct nid_path *path)
{
 unsigned int val = 0;
 hda_nid_t nid;
 int depth;

 for (depth = 0; depth < 3; depth++) {
  if (depth >= path->depth - 1)
   break;
  nid = path->path[depth];
  if (depth && check_boost_vol(codec, nid, HDA_OUTPUT, 0)) {
   val = HDA_COMPOSE_AMP_VAL(nid, 3, 0, HDA_OUTPUT);
   break;
  } else if (check_boost_vol(codec, nid, HDA_INPUT,
        path->idx[depth])) {
   val = HDA_COMPOSE_AMP_VAL(nid, 3, path->idx[depth],
        HDA_INPUT);
   break;
  }
 }

 return val;
}
