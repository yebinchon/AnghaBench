
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_write ) (struct ac97_codec*,int,int) ;} ;


 int AC97_RESERVED_3A ;
 int AC97_SURROUND_MASTER ;
 int stub1 (struct ac97_codec*,int,int) ;
 int stub2 (struct ac97_codec*,int,int) ;
 int stub3 (struct ac97_codec*,int,int) ;
 int stub4 (struct ac97_codec*,int,int) ;

__attribute__((used)) static int tritech_init(struct ac97_codec * codec)
{
 codec->codec_write(codec, 0x26, 0x0300);
 codec->codec_write(codec, 0x26, 0x0000);
 codec->codec_write(codec, AC97_SURROUND_MASTER, 0x0000);
 codec->codec_write(codec, AC97_RESERVED_3A, 0x0000);
 return 0;
}
