
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int HDA_COMPOSE_AMP_VAL (int ,int,int,int) ;
 int is_ctl_used (struct hda_codec*,unsigned int,int) ;

__attribute__((used)) static bool is_ctl_associated(struct hda_codec *codec, hda_nid_t nid,
         int dir, int idx, int type)
{
 unsigned int val = HDA_COMPOSE_AMP_VAL(nid, 3, idx, dir);
 return is_ctl_used(codec, val, type);
}
