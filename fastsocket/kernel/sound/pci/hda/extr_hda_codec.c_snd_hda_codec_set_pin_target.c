
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_pincfg {unsigned int target; } ;
struct hda_codec {int init_pins; } ;
typedef int hda_nid_t ;


 int EINVAL ;
 struct hda_pincfg* look_up_pincfg (struct hda_codec*,int *,int ) ;

int snd_hda_codec_set_pin_target(struct hda_codec *codec, hda_nid_t nid,
     unsigned int val)
{
 struct hda_pincfg *pin;

 pin = look_up_pincfg(codec, &codec->init_pins, nid);
 if (!pin)
  return -EINVAL;
 pin->target = val;
 return 0;
}
