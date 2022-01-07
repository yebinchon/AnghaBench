
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rawmidi {struct snd_msndmidi* private_data; } ;
struct snd_msndmidi {int dummy; } ;


 int kfree (struct snd_msndmidi*) ;

__attribute__((used)) static void snd_msndmidi_free(struct snd_rawmidi *rmidi)
{
 struct snd_msndmidi *mpu = rmidi->private_data;
 kfree(mpu);
}
