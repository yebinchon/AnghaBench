
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int mutex; TYPE_2__* ac97; } ;
struct snd_ac97_bus_ops {int dummy; } ;
struct snd_ac97_bus {int dummy; } ;
struct snd_ac97 {int dummy; } ;
struct TYPE_4__ {int num; TYPE_1__* bus; } ;
struct TYPE_3__ {struct snd_ac97_bus_ops* ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (TYPE_2__*) ;
 void* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int snd_soc_new_ac97_codec(struct snd_soc_codec *codec,
 struct snd_ac97_bus_ops *ops, int num)
{
 mutex_lock(&codec->mutex);

 codec->ac97 = kzalloc(sizeof(struct snd_ac97), GFP_KERNEL);
 if (codec->ac97 == ((void*)0)) {
  mutex_unlock(&codec->mutex);
  return -ENOMEM;
 }

 codec->ac97->bus = kzalloc(sizeof(struct snd_ac97_bus), GFP_KERNEL);
 if (codec->ac97->bus == ((void*)0)) {
  kfree(codec->ac97);
  codec->ac97 = ((void*)0);
  mutex_unlock(&codec->mutex);
  return -ENOMEM;
 }

 codec->ac97->bus->ops = ops;
 codec->ac97->num = num;
 mutex_unlock(&codec->mutex);
 return 0;
}
