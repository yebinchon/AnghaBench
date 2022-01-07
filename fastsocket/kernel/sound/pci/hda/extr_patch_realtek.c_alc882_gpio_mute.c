
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int afg; } ;


 int AC_VERB_GET_GPIO_DATA ;
 int AC_VERB_GET_GPIO_DIRECTION ;
 int AC_VERB_GET_GPIO_MASK ;
 int AC_VERB_SET_GPIO_DATA ;
 int AC_VERB_SET_GPIO_DIRECTION ;
 int AC_VERB_SET_GPIO_MASK ;
 int msleep (int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void alc882_gpio_mute(struct hda_codec *codec, int pin, int muted)
{
 unsigned int gpiostate, gpiomask, gpiodir;

 gpiostate = snd_hda_codec_read(codec, codec->afg, 0,
           AC_VERB_GET_GPIO_DATA, 0);

 if (!muted)
  gpiostate |= (1 << pin);
 else
  gpiostate &= ~(1 << pin);

 gpiomask = snd_hda_codec_read(codec, codec->afg, 0,
          AC_VERB_GET_GPIO_MASK, 0);
 gpiomask |= (1 << pin);

 gpiodir = snd_hda_codec_read(codec, codec->afg, 0,
         AC_VERB_GET_GPIO_DIRECTION, 0);
 gpiodir |= (1 << pin);


 snd_hda_codec_write(codec, codec->afg, 0,
       AC_VERB_SET_GPIO_MASK, gpiomask);
 snd_hda_codec_write(codec, codec->afg, 0,
       AC_VERB_SET_GPIO_DIRECTION, gpiodir);

 msleep(1);

 snd_hda_codec_write(codec, codec->afg, 0,
       AC_VERB_SET_GPIO_DATA, gpiostate);
}
