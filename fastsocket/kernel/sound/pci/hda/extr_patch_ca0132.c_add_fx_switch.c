
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 struct snd_kcontrol_new CA0132_CODEC_MUTE_MONO (char*,int ,int,int) ;
 int HDA_INPUT ;
 int HDA_OUTPUT ;
 char** dirstr ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;
 int sprintf (char*,char*,char const*,char*) ;

__attribute__((used)) static int add_fx_switch(struct hda_codec *codec, hda_nid_t nid,
    const char *pfx, int dir)
{
 char namestr[44];
 int type = dir ? HDA_INPUT : HDA_OUTPUT;
 struct snd_kcontrol_new knew =
  CA0132_CODEC_MUTE_MONO(namestr, nid, 1, type);
 sprintf(namestr, "%s %s Switch", pfx, dirstr[dir]);
 return snd_hda_ctl_add(codec, nid, snd_ctl_new1(&knew, codec));
}
