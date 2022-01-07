
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_HASH_PARSTR_KEY (int ) ;
 int get_stream_param ;
 unsigned int query_caps_hash (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static unsigned int query_stream_param(struct hda_codec *codec, hda_nid_t nid)
{
 return query_caps_hash(codec, nid, 0, HDA_HASH_PARSTR_KEY(nid),
          get_stream_param);
}
