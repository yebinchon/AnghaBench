
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec {int dummy; } ;


 int io_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int snd_soc_read (struct snd_soc_codec*,unsigned short) ;
 int snd_soc_write (struct snd_soc_codec*,unsigned short,unsigned int) ;

int snd_soc_update_bits(struct snd_soc_codec *codec, unsigned short reg,
    unsigned int mask, unsigned int value)
{
 int change;
 unsigned int old, new;

 mutex_lock(&io_mutex);
 old = snd_soc_read(codec, reg);
 new = (old & ~mask) | value;
 change = old != new;
 if (change)
  snd_soc_write(codec, reg, new);

 mutex_unlock(&io_mutex);
 return change;
}
