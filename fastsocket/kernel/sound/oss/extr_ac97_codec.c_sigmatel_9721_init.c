
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec {scalar_t__ id; int (* codec_write ) (struct ac97_codec*,int ,int) ;int (* codec_read ) (struct ac97_codec*,int ) ;} ;


 int AC97_SIGMATEL_CIC1 ;
 int AC97_SIGMATEL_CIC2 ;
 int AC97_SIGMATEL_MULTICHN ;
 int AC97_SURROUND_MASTER ;
 int stub1 (struct ac97_codec*,int ,long) ;
 int stub2 (struct ac97_codec*,int ,int) ;
 int stub3 (struct ac97_codec*,int ,int) ;
 int stub4 (struct ac97_codec*,int ) ;
 int stub5 (struct ac97_codec*,int ,int) ;

__attribute__((used)) static int sigmatel_9721_init(struct ac97_codec * codec)
{

 if (codec->id == 0)
  return 0;

 codec->codec_write(codec, AC97_SURROUND_MASTER, 0L);



 codec->codec_write(codec, AC97_SIGMATEL_MULTICHN, 0x00);




 codec->codec_write(codec, AC97_SIGMATEL_CIC1, 0xabba);
 codec->codec_read(codec, AC97_SIGMATEL_CIC1);


 codec->codec_write(codec, AC97_SIGMATEL_CIC2, 0x3802);

 return 0;
}
