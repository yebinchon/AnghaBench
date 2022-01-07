
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ac97 {struct ensoniq* private_data; } ;
struct TYPE_3__ {int * ac97; } ;
struct TYPE_4__ {TYPE_1__ es1371; } ;
struct ensoniq {TYPE_2__ u; } ;



__attribute__((used)) static void snd_ensoniq_mixer_free_ac97(struct snd_ac97 *ac97)
{
 struct ensoniq *ensoniq = ac97->private_data;
 ensoniq->u.es1371.ac97 = ((void*)0);
}
