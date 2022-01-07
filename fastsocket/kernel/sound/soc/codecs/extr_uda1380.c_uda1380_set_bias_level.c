
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int bias_level; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int R02_PON_BIAS ;




 int UDA1380_PM ;
 int uda1380_read_reg_cache (struct snd_soc_codec*,int ) ;
 int uda1380_write (struct snd_soc_codec*,int ,int) ;

__attribute__((used)) static int uda1380_set_bias_level(struct snd_soc_codec *codec,
 enum snd_soc_bias_level level)
{
 int pm = uda1380_read_reg_cache(codec, UDA1380_PM);

 switch (level) {
 case 130:
 case 129:
  uda1380_write(codec, UDA1380_PM, R02_PON_BIAS | pm);
  break;
 case 128:
  uda1380_write(codec, UDA1380_PM, R02_PON_BIAS);
  break;
 case 131:
  uda1380_write(codec, UDA1380_PM, 0x0);
  break;
 }
 codec->bias_level = level;
 return 0;
}
