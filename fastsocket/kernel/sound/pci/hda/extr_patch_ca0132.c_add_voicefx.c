
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int put; int get; int info; } ;
struct hda_codec {int dummy; } ;
struct TYPE_2__ {int name; } ;


 struct snd_kcontrol_new HDA_CODEC_MUTE_MONO (int ,int ,int,int ,int ) ;
 int HDA_INPUT ;
 int VOICEFX ;
 TYPE_1__ ca0132_voicefx ;
 int ca0132_voicefx_get ;
 int ca0132_voicefx_info ;
 int ca0132_voicefx_put ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct hda_codec*) ;
 int snd_hda_ctl_add (struct hda_codec*,int ,int ) ;

__attribute__((used)) static int add_voicefx(struct hda_codec *codec)
{
 struct snd_kcontrol_new knew =
  HDA_CODEC_MUTE_MONO(ca0132_voicefx.name,
        VOICEFX, 1, 0, HDA_INPUT);
 knew.info = ca0132_voicefx_info;
 knew.get = ca0132_voicefx_get;
 knew.put = ca0132_voicefx_put;
 return snd_hda_ctl_add(codec, VOICEFX, snd_ctl_new1(&knew, codec));
}
