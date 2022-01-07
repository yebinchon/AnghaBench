
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct onyx {int mutex; scalar_t__ analog_locked; scalar_t__ spdif_locked; int open_count; } ;
struct codec_info_item {struct onyx* codec_data; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int onyx_close(struct codec_info_item *cii,
        struct snd_pcm_substream *substream)
{
 struct onyx *onyx = cii->codec_data;

 mutex_lock(&onyx->mutex);
 onyx->open_count--;
 if (!onyx->open_count)
  onyx->spdif_locked = onyx->analog_locked = 0;
 mutex_unlock(&onyx->mutex);

 return 0;
}
