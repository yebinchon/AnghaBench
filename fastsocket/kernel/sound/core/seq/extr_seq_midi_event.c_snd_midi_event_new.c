
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_event {int bufsize; int lastcmd; int lock; int type; int * buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ST_INVALID ;
 int kfree (struct snd_midi_event*) ;
 int * kmalloc (int,int ) ;
 struct snd_midi_event* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int snd_midi_event_new(int bufsize, struct snd_midi_event **rdev)
{
 struct snd_midi_event *dev;

 *rdev = ((void*)0);
 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev == ((void*)0))
  return -ENOMEM;
 if (bufsize > 0) {
  dev->buf = kmalloc(bufsize, GFP_KERNEL);
  if (dev->buf == ((void*)0)) {
   kfree(dev);
   return -ENOMEM;
  }
 }
 dev->bufsize = bufsize;
 dev->lastcmd = 0xff;
 dev->type = ST_INVALID;
 spin_lock_init(&dev->lock);
 *rdev = dev;
 return 0;
}
