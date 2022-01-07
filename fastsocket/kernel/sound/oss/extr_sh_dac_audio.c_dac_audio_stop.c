
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL ;
 int HD64461_GPADR ;
 int HD64461_GPADR_SPEAKER ;
 int __raw_readw (int ) ;
 int __raw_writew (int ,int ) ;
 int dac_audio_stop_timer () ;
 scalar_t__ mach_is_hp6xx () ;
 int sh_dac_disable (int ) ;
 int sh_dac_output (int ,int ) ;

__attribute__((used)) static void dac_audio_stop(void)
{
 dac_audio_stop_timer();

 if (mach_is_hp6xx()) {
  u16 v = __raw_readw(HD64461_GPADR);
  v |= HD64461_GPADR_SPEAKER;
  __raw_writew(v, HD64461_GPADR);
 }

 sh_dac_output(0, CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL);
 sh_dac_disable(CONFIG_SOUND_SH_DAC_AUDIO_CHANNEL);
}
