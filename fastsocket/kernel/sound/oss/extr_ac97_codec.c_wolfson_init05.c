
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_WM97XX_FMIXER_VOL ;
 int stub1 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int wolfson_init05(struct ac97_codec * codec)
{

 codec->codec_write(codec, AC97_WM97XX_FMIXER_VOL, 0x0808);
 return 0;
}
