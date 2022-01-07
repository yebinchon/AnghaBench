
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; struct snd_soc_codec* disc_data; } ;
struct snd_soc_codec {int pop_time; scalar_t__ hw_write; struct tty_struct* control_data; } ;
typedef scalar_t__ hw_write_t ;
struct TYPE_2__ {scalar_t__ write; } ;



__attribute__((used)) static void v253_receive(struct tty_struct *tty,
    const unsigned char *cp, char *fp, int count)
{
 struct snd_soc_codec *codec = tty->disc_data;

 if (!codec)
  return;

 if (!codec->control_data) {



  codec->control_data = tty;
  codec->hw_write = (hw_write_t)tty->ops->write;
  codec->pop_time = 1;
 }
}
