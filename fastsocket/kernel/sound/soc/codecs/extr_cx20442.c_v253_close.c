
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct snd_soc_codec* disc_data; } ;
struct snd_soc_codec {scalar_t__ pop_time; int * control_data; int * hw_write; } ;



__attribute__((used)) static void v253_close(struct tty_struct *tty)
{
 struct snd_soc_codec *codec = tty->disc_data;

 tty->disc_data = ((void*)0);

 if (!codec)
  return;


 codec->hw_write = ((void*)0);
 codec->control_data = ((void*)0);
 codec->pop_time = 0;
}
