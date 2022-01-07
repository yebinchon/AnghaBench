
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {scalar_t__ start_nid; scalar_t__ num_nodes; int * wcaps; } ;
typedef scalar_t__ hda_nid_t ;



__attribute__((used)) static inline u32 get_wcaps(struct hda_codec *codec, hda_nid_t nid)
{
 if (nid < codec->start_nid ||
     nid >= codec->start_nid + codec->num_nodes)
  return 0;
 return codec->wcaps[nid - codec->start_nid];
}
