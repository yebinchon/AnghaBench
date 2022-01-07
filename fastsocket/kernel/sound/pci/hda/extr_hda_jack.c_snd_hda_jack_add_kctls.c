
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int num_inputs; scalar_t__* line_out_pins; int line_outs; scalar_t__* hp_pins; int hp_outs; scalar_t__* speaker_pins; int speaker_outs; scalar_t__* dig_out_pins; int dig_outs; scalar_t__ const dig_in_pin; scalar_t__ const mono_out_pin; TYPE_1__* inputs; } ;
typedef scalar_t__ hda_nid_t ;
struct TYPE_2__ {scalar_t__ const pin; scalar_t__ is_headphone_mic; } ;


 int add_jack_kctl (struct hda_codec*,scalar_t__ const,struct auto_pin_cfg const*,char*) ;
 int auto_cfg_hp_outs (struct auto_pin_cfg const*) ;
 scalar_t__ const* auto_cfg_hp_pins (struct auto_pin_cfg const*) ;

int snd_hda_jack_add_kctls(struct hda_codec *codec,
      const struct auto_pin_cfg *cfg)
{
 const hda_nid_t *p;
 int i, err;

 for (i = 0; i < cfg->num_inputs; i++) {


  if (cfg->inputs[i].is_headphone_mic) {
   if (auto_cfg_hp_outs(cfg) == 1)
    err = add_jack_kctl(codec, auto_cfg_hp_pins(cfg)[0],
          cfg, "Headphone Mic");
   else
    err = add_jack_kctl(codec, cfg->inputs[i].pin,
          cfg, "Headphone Mic");
  } else
   err = add_jack_kctl(codec, cfg->inputs[i].pin, cfg,
         ((void*)0));
  if (err < 0)
   return err;
 }

 for (i = 0, p = cfg->line_out_pins; i < cfg->line_outs; i++, p++) {
  err = add_jack_kctl(codec, *p, cfg, ((void*)0));
  if (err < 0)
   return err;
 }
 for (i = 0, p = cfg->hp_pins; i < cfg->hp_outs; i++, p++) {
  if (*p == *cfg->line_out_pins)
   break;
  err = add_jack_kctl(codec, *p, cfg, ((void*)0));
  if (err < 0)
   return err;
 }
 for (i = 0, p = cfg->speaker_pins; i < cfg->speaker_outs; i++, p++) {
  if (*p == *cfg->line_out_pins)
   break;
  err = add_jack_kctl(codec, *p, cfg, ((void*)0));
  if (err < 0)
   return err;
 }
 for (i = 0, p = cfg->dig_out_pins; i < cfg->dig_outs; i++, p++) {
  err = add_jack_kctl(codec, *p, cfg, ((void*)0));
  if (err < 0)
   return err;
 }
 err = add_jack_kctl(codec, cfg->dig_in_pin, cfg, ((void*)0));
 if (err < 0)
  return err;
 err = add_jack_kctl(codec, cfg->mono_out_pin, cfg, ((void*)0));
 if (err < 0)
  return err;
 return 0;
}
