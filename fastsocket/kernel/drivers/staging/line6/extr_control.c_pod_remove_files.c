
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int LINE6_BITS_BASSPODXTALL ;
 int LINE6_BITS_LIVE ;
 int LINE6_BITS_PODXTALL ;
 int LINE6_BITS_PRO ;
 int dev_attr_amp1_engage ;
 int dev_attr_amp_model ;
 int dev_attr_amp_model_setup ;
 int dev_attr_amp_switch_select ;
 int dev_attr_band_1_frequency ;
 int dev_attr_band_1_gain ;
 int dev_attr_band_2_frequency ;
 int dev_attr_band_2_frequency__bass ;
 int dev_attr_band_2_gain ;
 int dev_attr_band_2_gain__bass ;
 int dev_attr_band_3_frequency ;
 int dev_attr_band_3_frequency__bass ;
 int dev_attr_band_3_gain ;
 int dev_attr_band_3_gain__bass ;
 int dev_attr_band_4_frequency ;
 int dev_attr_band_4_frequency__bass ;
 int dev_attr_band_4_gain ;
 int dev_attr_band_4_gain__bass ;
 int dev_attr_band_5_frequency ;
 int dev_attr_band_5_gain__bass ;
 int dev_attr_band_6_frequency ;
 int dev_attr_band_6_gain__bass ;
 int dev_attr_bass ;
 int dev_attr_bypass_volume ;
 int dev_attr_cabinet_model ;
 int dev_attr_chan_vol ;
 int dev_attr_comp_enable ;
 int dev_attr_compression_gain ;
 int dev_attr_compression_threshold ;
 int dev_attr_delay_enable ;
 int dev_attr_delay_model ;
 int dev_attr_delay_param_1 ;
 int dev_attr_delay_param_1_double_precision ;
 int dev_attr_delay_param_1_note_value ;
 int dev_attr_delay_param_2 ;
 int dev_attr_delay_param_3 ;
 int dev_attr_delay_param_4 ;
 int dev_attr_delay_param_5 ;
 int dev_attr_delay_pre_post ;
 int dev_attr_delay_reverb_lo_cut ;
 int dev_attr_delay_verb_model ;
 int dev_attr_delay_volume_mix ;
 int dev_attr_di_delay ;
 int dev_attr_di_model ;
 int dev_attr_drive ;
 int dev_attr_effect_setup ;
 int dev_attr_eq_enable ;
 int dev_attr_eq_pre_post ;
 int dev_attr_fx_loop_on_off ;
 int dev_attr_gate_decay_time ;
 int dev_attr_gate_threshold ;
 int dev_attr_highmid ;
 int dev_attr_lowmid ;
 int dev_attr_mic_selection ;
 int dev_attr_mid ;
 int dev_attr_mod_enable ;
 int dev_attr_mod_param_1 ;
 int dev_attr_mod_param_1_double_precision ;
 int dev_attr_mod_param_1_note_value ;
 int dev_attr_mod_param_2 ;
 int dev_attr_mod_param_3 ;
 int dev_attr_mod_param_4 ;
 int dev_attr_mod_param_5 ;
 int dev_attr_mod_pre_post ;
 int dev_attr_mod_volume_mix ;
 int dev_attr_modulation_lo_cut ;
 int dev_attr_modulation_model ;
 int dev_attr_noise_gate_enable ;
 int dev_attr_pan ;
 int dev_attr_presence ;
 int dev_attr_reverb_decay ;
 int dev_attr_reverb_enable ;
 int dev_attr_reverb_mix ;
 int dev_attr_reverb_pre_delay ;
 int dev_attr_reverb_pre_post ;
 int dev_attr_reverb_tone ;
 int dev_attr_reverb_type ;
 int dev_attr_roomlevel ;
 int dev_attr_stomp_enable ;
 int dev_attr_stomp_model ;
 int dev_attr_stomp_param_1_note_value ;
 int dev_attr_stomp_param_2 ;
 int dev_attr_stomp_param_3 ;
 int dev_attr_stomp_param_4 ;
 int dev_attr_stomp_param_5 ;
 int dev_attr_stomp_param_6 ;
 int dev_attr_stomp_time ;
 int dev_attr_tap ;
 int dev_attr_tempo_lsb ;
 int dev_attr_tempo_msb ;
 int dev_attr_treble ;
 int dev_attr_treble__bass ;
 int dev_attr_tuner ;
 int dev_attr_tweak ;
 int dev_attr_tweak_param_select ;
 int dev_attr_vol_pedal_position ;
 int dev_attr_volume_pedal_minimum ;
 int dev_attr_volume_pre_post ;
 int dev_attr_volume_tweak_pedal_assign ;
 int dev_attr_wah_enable ;
 int dev_attr_wah_model ;
 int dev_attr_wah_position ;
 int device_remove_file (struct device*,int *) ;

void pod_remove_files(int firmware, int type, struct device *dev)
{
 device_remove_file(dev, &dev_attr_tweak);
 device_remove_file(dev, &dev_attr_wah_position);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_compression_gain);
 device_remove_file(dev, &dev_attr_vol_pedal_position);
 device_remove_file(dev, &dev_attr_compression_threshold);
 device_remove_file(dev, &dev_attr_pan);
 device_remove_file(dev, &dev_attr_amp_model_setup);
 if (firmware >= 200)
  device_remove_file(dev, &dev_attr_amp_model);
 device_remove_file(dev, &dev_attr_drive);
 device_remove_file(dev, &dev_attr_bass);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_mid);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_lowmid);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_treble);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_highmid);
 device_remove_file(dev, &dev_attr_chan_vol);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_mix);
 device_remove_file(dev, &dev_attr_effect_setup);
 if (firmware >= 200)
  device_remove_file(dev, &dev_attr_band_1_frequency);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_presence);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_treble__bass);
 device_remove_file(dev, &dev_attr_noise_gate_enable);
 device_remove_file(dev, &dev_attr_gate_threshold);
 device_remove_file(dev, &dev_attr_gate_decay_time);
 device_remove_file(dev, &dev_attr_stomp_enable);
 device_remove_file(dev, &dev_attr_comp_enable);
 device_remove_file(dev, &dev_attr_stomp_time);
 device_remove_file(dev, &dev_attr_delay_enable);
 device_remove_file(dev, &dev_attr_mod_param_1);
 device_remove_file(dev, &dev_attr_delay_param_1);
 device_remove_file(dev, &dev_attr_delay_param_1_note_value);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_2_frequency__bass);
 device_remove_file(dev, &dev_attr_delay_param_2);
 device_remove_file(dev, &dev_attr_delay_volume_mix);
 device_remove_file(dev, &dev_attr_delay_param_3);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_enable);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_type);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_decay);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_tone);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_pre_delay);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_reverb_pre_post);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_2_frequency);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_3_frequency__bass);
 device_remove_file(dev, &dev_attr_wah_enable);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_modulation_lo_cut);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_delay_reverb_lo_cut);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_volume_pedal_minimum);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_eq_pre_post);
 device_remove_file(dev, &dev_attr_volume_pre_post);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_di_model);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_di_delay);
 device_remove_file(dev, &dev_attr_mod_enable);
 device_remove_file(dev, &dev_attr_mod_param_1_note_value);
 device_remove_file(dev, &dev_attr_mod_param_2);
 device_remove_file(dev, &dev_attr_mod_param_3);
 device_remove_file(dev, &dev_attr_mod_param_4);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_mod_param_5);
 device_remove_file(dev, &dev_attr_mod_volume_mix);
 device_remove_file(dev, &dev_attr_mod_pre_post);
 device_remove_file(dev, &dev_attr_modulation_model);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_3_frequency);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_4_frequency__bass);
 device_remove_file(dev, &dev_attr_mod_param_1_double_precision);
 device_remove_file(dev, &dev_attr_delay_param_1_double_precision);
 if (firmware >= 200)
  device_remove_file(dev, &dev_attr_eq_enable);
 device_remove_file(dev, &dev_attr_tap);
 device_remove_file(dev, &dev_attr_volume_tweak_pedal_assign);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_5_frequency);
 device_remove_file(dev, &dev_attr_tuner);
 device_remove_file(dev, &dev_attr_mic_selection);
 device_remove_file(dev, &dev_attr_cabinet_model);
 device_remove_file(dev, &dev_attr_stomp_model);
 device_remove_file(dev, &dev_attr_roomlevel);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_4_frequency);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_6_frequency);
 device_remove_file(dev, &dev_attr_stomp_param_1_note_value);
 device_remove_file(dev, &dev_attr_stomp_param_2);
 device_remove_file(dev, &dev_attr_stomp_param_3);
 device_remove_file(dev, &dev_attr_stomp_param_4);
 device_remove_file(dev, &dev_attr_stomp_param_5);
 device_remove_file(dev, &dev_attr_stomp_param_6);
 if ((type & (LINE6_BITS_LIVE)) != 0)
  device_remove_file(dev, &dev_attr_amp_switch_select);
 device_remove_file(dev, &dev_attr_delay_param_4);
 device_remove_file(dev, &dev_attr_delay_param_5);
 device_remove_file(dev, &dev_attr_delay_pre_post);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_delay_model);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  device_remove_file(dev, &dev_attr_delay_verb_model);
 device_remove_file(dev, &dev_attr_tempo_msb);
 device_remove_file(dev, &dev_attr_tempo_lsb);
 if (firmware >= 300)
  device_remove_file(dev, &dev_attr_wah_model);
 if (firmware >= 214)
  device_remove_file(dev, &dev_attr_bypass_volume);
 if ((type & (LINE6_BITS_PRO)) != 0)
  device_remove_file(dev, &dev_attr_fx_loop_on_off);
 device_remove_file(dev, &dev_attr_tweak_param_select);
 device_remove_file(dev, &dev_attr_amp1_engage);
 if (firmware >= 200)
  device_remove_file(dev, &dev_attr_band_1_gain);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_2_gain__bass);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_2_gain);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_3_gain__bass);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_3_gain);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_4_gain__bass);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_5_gain__bass);
 if ((type & (LINE6_BITS_PODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_4_gain);
 if ((type & (LINE6_BITS_BASSPODXTALL)) != 0)
  if (firmware >= 200)
   device_remove_file(dev, &dev_attr_band_6_gain__bass);
}
