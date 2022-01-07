
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int snd_hda_get_connections (struct hda_codec*,int ,int *,int ) ;

__attribute__((used)) static inline int
snd_hda_get_num_conns(struct hda_codec *codec, hda_nid_t nid)
{
 return snd_hda_get_connections(codec, nid, ((void*)0), 0);
}
