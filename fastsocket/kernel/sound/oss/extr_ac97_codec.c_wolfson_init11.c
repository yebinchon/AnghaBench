
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_WM9711_OUT3VOL ;
 int AC97_WM97XX_TEST ;
 int stub1 (struct ac97_codec*,int ,int) ;
 int stub2 (struct ac97_codec*,int ) ;
 int stub3 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int wolfson_init11(struct ac97_codec * codec)
{

 codec->codec_write(codec, AC97_WM97XX_TEST,
  codec->codec_read(codec, AC97_WM97XX_TEST) & 0xffbf);


 codec->codec_write(codec, AC97_WM9711_OUT3VOL, 0x0808);
 return 0;
}
