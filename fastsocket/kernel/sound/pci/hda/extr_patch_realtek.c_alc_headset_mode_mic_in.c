
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; } ;
typedef int hda_nid_t ;


 int PIN_VREF50 ;
 int alc_read_coef_idx (struct hda_codec*,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,int ,int ) ;
 int snd_printdd (char*) ;

__attribute__((used)) static void alc_headset_mode_mic_in(struct hda_codec *codec, hda_nid_t hp_pin,
        hda_nid_t mic_pin)
{
 int val;

 switch (codec->vendor_id) {
 case 0x10ec0283:
  alc_write_coef_idx(codec, 0x45, 0xc429);
  snd_hda_set_pin_ctl_cache(codec, hp_pin, 0);
  val = alc_read_coef_idx(codec, 0x35);
  alc_write_coef_idx(codec, 0x35, val | 1<<14);
  alc_write_coef_idx(codec, 0x06, 0x2100);
  alc_write_coef_idx(codec, 0x1a, 0x0021);
  alc_write_coef_idx(codec, 0x26, 0x008c);
  snd_hda_set_pin_ctl_cache(codec, mic_pin, PIN_VREF50);
  break;
 case 0x10ec0292:
  snd_hda_set_pin_ctl_cache(codec, hp_pin, 0);
  alc_write_coef_idx(codec, 0x19, 0xa208);
  alc_write_coef_idx(codec, 0x2e, 0xacf0);
  break;
 case 0x10ec0668:
  alc_write_coef_idx(codec, 0x11, 0x0001);
  snd_hda_set_pin_ctl_cache(codec, hp_pin, 0);
  alc_write_coef_idx(codec, 0xb7, 0x802b);
  alc_write_coef_idx(codec, 0xb5, 0x1040);
  val = alc_read_coef_idx(codec, 0xc3);
  alc_write_coef_idx(codec, 0xc3, val | 1<<12);
  snd_hda_set_pin_ctl_cache(codec, mic_pin, PIN_VREF50);
  break;
 }
 snd_printdd("Headset jack set to mic-in mode.\n");
}
