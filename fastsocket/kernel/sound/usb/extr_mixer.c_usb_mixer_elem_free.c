
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int * private_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void usb_mixer_elem_free(struct snd_kcontrol *kctl)
{
 kfree(kctl->private_data);
 kctl->private_data = ((void*)0);
}
