
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 int update_pin_ctl (struct hda_codec*,int ,int ) ;

__attribute__((used)) static inline void restore_pin_ctl(struct hda_codec *codec, hda_nid_t pin)
{
 update_pin_ctl(codec, pin, snd_hda_codec_get_pin_target(codec, pin));
}
