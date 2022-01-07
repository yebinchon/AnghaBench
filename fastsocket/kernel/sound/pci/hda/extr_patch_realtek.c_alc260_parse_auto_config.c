
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int alc_parse_auto_config (struct hda_codec*,int const*,int const*) ;

__attribute__((used)) static int alc260_parse_auto_config(struct hda_codec *codec)
{
 static const hda_nid_t alc260_ignore[] = { 0x17, 0 };
 static const hda_nid_t alc260_ssids[] = { 0x10, 0x15, 0x0f, 0 };
 return alc_parse_auto_config(codec, alc260_ignore, alc260_ssids);
}
