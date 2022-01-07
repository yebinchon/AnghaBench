
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int ecard_ctrl; scalar_t__ port; } ;


 int EC_ADCCAL ;
 int EC_DACCAL ;
 int EC_DEFAULT_ADC_GAIN ;
 int EC_DEFAULT_SPDIF0_SEL ;
 int EC_DEFAULT_SPDIF1_SEL ;
 int EC_LEDN ;
 int EC_RAW_RUN_MODE ;
 int EC_SPDIF0_SELECT (int ) ;
 int EC_SPDIF1_SELECT (int ) ;
 int EC_TRIM_CSN ;
 scalar_t__ HCFG ;
 unsigned int HCFG_AUDIOENABLE ;
 unsigned int HCFG_CODECFORMAT_I2S ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int snd_emu10k1_ecard_setadcgain (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_ecard_write (struct snd_emu10k1*,int) ;
 int snd_emu10k1_wait (struct snd_emu10k1*,int) ;

__attribute__((used)) static int snd_emu10k1_ecard_init(struct snd_emu10k1 *emu)
{
 unsigned int hc_value;


 emu->ecard_ctrl = EC_RAW_RUN_MODE |
     EC_SPDIF0_SELECT(EC_DEFAULT_SPDIF0_SEL) |
     EC_SPDIF1_SELECT(EC_DEFAULT_SPDIF1_SEL);



 hc_value = inl(emu->port + HCFG);
 outl(hc_value | HCFG_AUDIOENABLE | HCFG_CODECFORMAT_I2S, emu->port + HCFG);
 inl(emu->port + HCFG);


 snd_emu10k1_ecard_write(emu, EC_ADCCAL | EC_LEDN | EC_TRIM_CSN);


 snd_emu10k1_ecard_write(emu, EC_DACCAL | EC_LEDN | EC_TRIM_CSN);




 snd_emu10k1_wait(emu, 48000);




 snd_emu10k1_ecard_write(emu, EC_ADCCAL | EC_LEDN | EC_TRIM_CSN);


 snd_emu10k1_ecard_write(emu, emu->ecard_ctrl);


 snd_emu10k1_ecard_setadcgain(emu, EC_DEFAULT_ADC_GAIN);

 return 0;
}
