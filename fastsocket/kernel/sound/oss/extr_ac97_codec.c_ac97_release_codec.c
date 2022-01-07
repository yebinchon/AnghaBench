
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ac97_codec {TYPE_1__* driver; int list; } ;
struct TYPE_2__ {int (* remove ) (struct ac97_codec*,TYPE_1__*) ;} ;


 int codec_mutex ;
 int kfree (struct ac97_codec*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct ac97_codec*,TYPE_1__*) ;

void ac97_release_codec(struct ac97_codec *codec)
{


 mutex_lock(&codec_mutex);
 list_del(&codec->list);
 mutex_unlock(&codec_mutex);




 if(codec->driver)
  codec->driver->remove(codec, codec->driver);
 kfree(codec);
}
