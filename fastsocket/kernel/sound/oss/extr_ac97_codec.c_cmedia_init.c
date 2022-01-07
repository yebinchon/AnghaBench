
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int) ;int (* codec_write ) (struct ac97_codec*,int,int) ;} ;


 int stub1 (struct ac97_codec*,int,int) ;
 int stub2 (struct ac97_codec*,int) ;
 int stub3 (struct ac97_codec*,int,int) ;
 int stub4 (struct ac97_codec*,int,int) ;
 int stub5 (struct ac97_codec*,int,int) ;

__attribute__((used)) static int cmedia_init(struct ac97_codec *codec)
{
 u16 v;


 codec->codec_write(codec, 0x64, 0x3000);
 v = codec->codec_read(codec, 0x64);
 v &= ~0x8000;
 codec->codec_write(codec, 0x64, v);
 codec->codec_write(codec, 0x70, 0x0100);
 codec->codec_write(codec, 0x72, 0x0020);
 return 0;
}
