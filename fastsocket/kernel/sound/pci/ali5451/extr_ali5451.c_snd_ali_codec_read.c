
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;
struct snd_ac97 {int num; struct snd_ali* private_data; } ;


 unsigned short snd_ali_codec_peek (struct snd_ali*,int ,unsigned short) ;
 int snd_ali_printk (char*,unsigned short) ;

__attribute__((used)) static unsigned short snd_ali_codec_read(struct snd_ac97 *ac97,
      unsigned short reg)
{
 struct snd_ali *codec = ac97->private_data;

 snd_ali_printk("codec_read reg=%xh.\n", reg);
 return snd_ali_codec_peek(codec, ac97->num, reg);
}
