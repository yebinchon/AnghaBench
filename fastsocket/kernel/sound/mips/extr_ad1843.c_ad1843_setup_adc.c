
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1843 {int dummy; } ;
typedef int snd_pcm_format_t ;







 int ad1843_ADLF ;
 int ad1843_ADRF ;
 int ad1843_C3C ;
 int ad1843_write_bits (struct snd_ad1843*,int *,unsigned int) ;
 int ad1843_write_multi (struct snd_ad1843*,int,int *,int,int *,int) ;

void ad1843_setup_adc(struct snd_ad1843 *ad1843,
        unsigned int framerate,
        snd_pcm_format_t fmt,
        unsigned int channels)
{
 int da_fmt = 0;

 switch (fmt) {
 case 129: da_fmt = 0; break;
 case 128: da_fmt = 0; break;
 case 130: da_fmt = 1; break;
 case 131: da_fmt = 2; break;
 case 132: da_fmt = 3; break;
 default: break;
 }

 ad1843_write_bits(ad1843, &ad1843_C3C, framerate);
 ad1843_write_multi(ad1843, 2,
      &ad1843_ADLF, da_fmt, &ad1843_ADRF, da_fmt);
}
