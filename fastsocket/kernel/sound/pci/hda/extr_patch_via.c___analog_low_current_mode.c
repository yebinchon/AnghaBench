
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active_streams; } ;
struct via_spec {int alc_mode; int codec_type; TYPE_1__ gen; scalar_t__ no_pin_power_ctl; } ;
struct hda_codec {int afg; struct via_spec* spec; } ;
 scalar_t__ is_aa_path_mute (struct hda_codec*) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void __analog_low_current_mode(struct hda_codec *codec, bool force)
{
 struct via_spec *spec = codec->spec;
 bool enable;
 unsigned int verb, parm;

 if (spec->no_pin_power_ctl)
  enable = 0;
 else
  enable = is_aa_path_mute(codec) && !spec->gen.active_streams;
 if (enable == spec->alc_mode && !force)
  return;
 spec->alc_mode = enable;


 switch (spec->codec_type) {
 case 135:
 case 136:
  verb = 0xf70;
  parm = enable ? 0x02 : 0x00;
  break;
 case 134:
 case 132:
 case 133:
  verb = 0xf73;
  parm = enable ? 0x51 : 0xe1;
  break;
 case 138:
  verb = 0xf73;
  parm = enable ? 0x01 : 0x1d;
  break;
 case 128:
 case 129:
 case 131:
  verb = 0xf93;
  parm = enable ? 0x00 : 0xe0;
  break;
 case 137:
 case 130:
  verb = 0xf82;
  parm = enable ? 0x00 : 0xe0;
  break;
 default:
  return;
 }

 snd_hda_codec_write(codec, codec->afg, 0, verb, parm);
}
