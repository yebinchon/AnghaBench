
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct s6000_runtime_data {scalar_t__ period; } ;
struct TYPE_2__ {struct s6000_runtime_data* private_data; } ;



__attribute__((used)) static int s6000_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct s6000_runtime_data *prtd = substream->runtime->private_data;

 prtd->period = 0;

 return 0;
}
