
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_HASH_PINCAP_KEY (int ) ;
 int query_caps_hash (struct hda_codec*,int ,int ,int ,int ) ;
 int read_pin_cap ;

u32 snd_hda_query_pin_caps(struct hda_codec *codec, hda_nid_t nid)
{
 return query_caps_hash(codec, nid, 0, HDA_HASH_PINCAP_KEY(nid),
          read_pin_cap);
}
