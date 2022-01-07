
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_SIGMATEL_BIAS1 ;
 int AC97_SIGMATEL_BIAS2 ;
 int AC97_SIGMATEL_CIC1 ;
 int AC97_SIGMATEL_CIC2 ;
 int AC97_SIGMATEL_MULTICHN ;
 int stub1 (struct ac97_codec*,int ,int) ;
 int stub2 (struct ac97_codec*,int ,int) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ,int) ;
 int stub5 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int sigmatel_9744_init(struct ac97_codec * codec)
{

 codec->codec_write(codec, AC97_SIGMATEL_CIC1, 0xabba);
 codec->codec_write(codec, AC97_SIGMATEL_CIC2, 0x0000);
 codec->codec_write(codec, AC97_SIGMATEL_BIAS1, 0xabba);
 codec->codec_write(codec, AC97_SIGMATEL_BIAS2, 0x0002);
 codec->codec_write(codec, AC97_SIGMATEL_MULTICHN, 0x0000);
 return 0;
}
