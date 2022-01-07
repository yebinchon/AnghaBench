
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ac97 {scalar_t__ num; struct cs4281* private_data; } ;
struct cs4281 {int * ac97; int * ac97_secondary; } ;



__attribute__((used)) static void snd_cs4281_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct cs4281 *chip = ac97->private_data;
 if (ac97->num)
  chip->ac97_secondary = ((void*)0);
 else
  chip->ac97 = ((void*)0);
}
