
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int init_pins; int user_pins; int driver_pins; } ;


 int snd_array_free (int *) ;

__attribute__((used)) static void free_init_pincfgs(struct hda_codec *codec)
{
 snd_array_free(&codec->driver_pins);



 snd_array_free(&codec->init_pins);
}
