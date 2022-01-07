
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kctl_event {int list; } ;
struct TYPE_2__ {int next; } ;
struct snd_ctl_file {int read_lock; TYPE_1__ events; } ;


 int kfree (struct snd_kctl_event*) ;
 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 struct snd_kctl_event* snd_kctl_event (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ctl_empty_read_queue(struct snd_ctl_file * ctl)
{
 unsigned long flags;
 struct snd_kctl_event *cread;

 spin_lock_irqsave(&ctl->read_lock, flags);
 while (!list_empty(&ctl->events)) {
  cread = snd_kctl_event(ctl->events.next);
  list_del(&cread->list);
  kfree(cread);
 }
 spin_unlock_irqrestore(&ctl->read_lock, flags);
}
