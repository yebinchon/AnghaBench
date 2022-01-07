
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ac97_codec {int (* codec_read ) (struct ac97_codec*,int ) ;int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_SIGMATEL_ANALOG ;
 int AC97_SIGMATEL_BIAS1 ;
 int AC97_SIGMATEL_BIAS2 ;
 int AC97_SIGMATEL_CIC1 ;
 int AC97_SIGMATEL_CIC2 ;
 int AC97_SIGMATEL_DAC2INVERT ;
 int AC97_SIGMATEL_MULTICHN ;
 int stub1 (struct ac97_codec*,int ) ;
 int stub10 (struct ac97_codec*,int ,int) ;
 int stub2 (struct ac97_codec*,int ) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ,int) ;
 int stub5 (struct ac97_codec*,int ,int) ;
 int stub6 (struct ac97_codec*,int ,int) ;
 int stub7 (struct ac97_codec*,int ,int) ;
 int stub8 (struct ac97_codec*,int ,int) ;
 int stub9 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int sigmatel_9708_init(struct ac97_codec * codec)
{
 u16 codec72, codec6c;

 codec72 = codec->codec_read(codec, AC97_SIGMATEL_BIAS2) & 0x8000;
 codec6c = codec->codec_read(codec, AC97_SIGMATEL_ANALOG);

 if ((codec72==0) && (codec6c==0)) {
  codec->codec_write(codec, AC97_SIGMATEL_CIC1, 0xabba);
  codec->codec_write(codec, AC97_SIGMATEL_CIC2, 0x1000);
  codec->codec_write(codec, AC97_SIGMATEL_BIAS1, 0xabba);
  codec->codec_write(codec, AC97_SIGMATEL_BIAS2, 0x0007);
 } else if ((codec72==0x8000) && (codec6c==0)) {
  codec->codec_write(codec, AC97_SIGMATEL_CIC1, 0xabba);
  codec->codec_write(codec, AC97_SIGMATEL_CIC2, 0x1001);
  codec->codec_write(codec, AC97_SIGMATEL_DAC2INVERT, 0x0008);
 } else if ((codec72==0x8000) && (codec6c==0x0080)) {

 }
 codec->codec_write(codec, AC97_SIGMATEL_MULTICHN, 0x0000);
 return 0;
}
