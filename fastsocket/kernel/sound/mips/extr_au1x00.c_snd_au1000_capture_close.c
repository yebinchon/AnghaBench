
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct snd_au1000 {TYPE_2__** stream; } ;
struct TYPE_4__ {int * substream; } ;
struct TYPE_3__ {struct snd_au1000* private_data; } ;


 size_t CAPTURE ;

__attribute__((used)) static int
snd_au1000_capture_close(struct snd_pcm_substream *substream)
{
 struct snd_au1000 *au1000 = substream->pcm->private_data;

 au1000->stream[CAPTURE]->substream = ((void*)0);
 return 0;
}
