
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_PCMOUT_VOL ;
 int AC97_SURROUND_MASTER ;
 int AC97_WM9704_RPCM_VOL ;
 int AC97_WM97XX_FMIXER_VOL ;
 int AC97_WM97XX_RMIXER_VOL ;
 int AC97_WM97XX_TEST ;
 int stub1 (struct ac97_codec*,int ,int) ;
 int stub2 (struct ac97_codec*,int ,int) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ,int) ;
 int stub5 (struct ac97_codec*,int ) ;
 int stub6 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int wolfson_init04(struct ac97_codec * codec)
{
 codec->codec_write(codec, AC97_WM97XX_FMIXER_VOL, 0x0808);
 codec->codec_write(codec, AC97_WM97XX_RMIXER_VOL, 0x0808);


 codec->codec_write(codec, AC97_WM97XX_TEST, 0x0200);


 codec->codec_write(codec, AC97_WM9704_RPCM_VOL,
  codec->codec_read(codec, AC97_PCMOUT_VOL));


 codec->codec_write(codec, AC97_SURROUND_MASTER, 0x0000);
 return 0;
}
