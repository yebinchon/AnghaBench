
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_HASH_KEY (int ,int,int ) ;
 int query_caps_hash (struct hda_codec*,int ,int,int ,int ) ;
 int read_amp_cap ;

u32 query_amp_caps(struct hda_codec *codec, hda_nid_t nid, int direction)
{
 return query_caps_hash(codec, nid, direction,
          HDA_HASH_KEY(nid, direction, 0),
          read_amp_cap);
}
