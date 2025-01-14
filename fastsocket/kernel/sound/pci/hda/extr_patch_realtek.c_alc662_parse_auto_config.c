
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; } ;
typedef int hda_nid_t ;


 int alc_parse_auto_config (struct hda_codec*,int const*,int const*) ;

__attribute__((used)) static int alc662_parse_auto_config(struct hda_codec *codec)
{
 static const hda_nid_t alc662_ignore[] = { 0x1d, 0 };
 static const hda_nid_t alc663_ssids[] = { 0x15, 0x1b, 0x14, 0x21 };
 static const hda_nid_t alc662_ssids[] = { 0x15, 0x1b, 0x14, 0 };
 const hda_nid_t *ssids;

 if (codec->vendor_id == 0x10ec0272 || codec->vendor_id == 0x10ec0663 ||
     codec->vendor_id == 0x10ec0665 || codec->vendor_id == 0x10ec0670 ||
     codec->vendor_id == 0x10ec0671)
  ssids = alc663_ssids;
 else
  ssids = alc662_ssids;
 return alc_parse_auto_config(codec, alc662_ignore, ssids);
}
