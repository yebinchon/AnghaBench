
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {int (* codec_write ) (struct ac97_codec*,int ,int) ;} ;


 int AC97_AD1886_JACK_SENSE ;
 int stub1 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int ad1886_init(struct ac97_codec * codec)
{

 codec->codec_write(codec, AC97_AD1886_JACK_SENSE, 0x0010);
 return 0;
}
