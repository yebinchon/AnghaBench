
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int mutex; } ;


 int kfree (struct snd_usb_audio*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static int snd_usb_audio_free(struct snd_usb_audio *chip)
{
 mutex_destroy(&chip->mutex);
 kfree(chip);
 return 0;
}
