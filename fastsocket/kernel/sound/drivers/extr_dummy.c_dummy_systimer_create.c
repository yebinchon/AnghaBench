
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_4__ {unsigned long data; int function; } ;
struct dummy_systimer_pcm {struct snd_pcm_substream* substream; int lock; TYPE_2__ timer; } ;
struct TYPE_3__ {struct dummy_systimer_pcm* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dummy_systimer_callback ;
 int init_timer (TYPE_2__*) ;
 struct dummy_systimer_pcm* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int dummy_systimer_create(struct snd_pcm_substream *substream)
{
 struct dummy_systimer_pcm *dpcm;

 dpcm = kzalloc(sizeof(*dpcm), GFP_KERNEL);
 if (!dpcm)
  return -ENOMEM;
 substream->runtime->private_data = dpcm;
 init_timer(&dpcm->timer);
 dpcm->timer.data = (unsigned long) dpcm;
 dpcm->timer.function = dummy_systimer_callback;
 spin_lock_init(&dpcm->lock);
 dpcm->substream = substream;
 return 0;
}
