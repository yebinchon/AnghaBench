
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_HASH_KEY (int ,int,int ) ;
 int write_caps_hash (struct hda_codec*,int ,unsigned int) ;

int snd_hda_override_amp_caps(struct hda_codec *codec, hda_nid_t nid, int dir,
         unsigned int caps)
{
 return write_caps_hash(codec, HDA_HASH_KEY(nid, dir, 0), caps);
}
