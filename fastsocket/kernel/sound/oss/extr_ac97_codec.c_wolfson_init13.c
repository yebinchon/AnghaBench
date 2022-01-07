
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_EXTENDED_MODEM_ID ;
 int AC97_EXTEND_MODEM_STAT ;
 int AC97_PCBEEP_VOL ;
 int AC97_PHONE_VOL ;
 int AC97_POWER_CONTROL ;
 int AC97_RECORD_GAIN ;
 int stub1 (struct ac97_codec*,int ,int) ;
 int stub2 (struct ac97_codec*,int ,int) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ,int) ;
 int stub5 (struct ac97_codec*,int ,int) ;
 int stub6 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int wolfson_init13(struct ac97_codec * codec)
{
 codec->codec_write(codec, AC97_RECORD_GAIN, 0x00a0);
 codec->codec_write(codec, AC97_POWER_CONTROL, 0x0000);
 codec->codec_write(codec, AC97_EXTENDED_MODEM_ID, 0xDA00);
 codec->codec_write(codec, AC97_EXTEND_MODEM_STAT, 0x3810);
 codec->codec_write(codec, AC97_PHONE_VOL, 0x0808);
 codec->codec_write(codec, AC97_PCBEEP_VOL, 0x0808);

 return 0;
}
