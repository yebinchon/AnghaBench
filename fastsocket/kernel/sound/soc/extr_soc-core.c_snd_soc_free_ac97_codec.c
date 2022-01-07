
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_codec {int mutex; TYPE_1__* ac97; } ;
struct TYPE_2__ {struct TYPE_2__* bus; } ;


 int kfree (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void snd_soc_free_ac97_codec(struct snd_soc_codec *codec)
{
 mutex_lock(&codec->mutex);
 kfree(codec->ac97->bus);
 kfree(codec->ac97);
 codec->ac97 = ((void*)0);
 mutex_unlock(&codec->mutex);
}
