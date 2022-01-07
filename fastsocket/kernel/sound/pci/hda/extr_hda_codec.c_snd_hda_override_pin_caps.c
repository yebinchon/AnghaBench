
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_HASH_PINCAP_KEY (int ) ;
 int write_caps_hash (struct hda_codec*,int ,unsigned int) ;

int snd_hda_override_pin_caps(struct hda_codec *codec, hda_nid_t nid,
         unsigned int caps)
{
 return write_caps_hash(codec, HDA_HASH_PINCAP_KEY(nid), caps);
}
