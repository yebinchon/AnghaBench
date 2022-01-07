
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int irda_queue_t ;
struct TYPE_12__ {int hb_spinlock; } ;
typedef TYPE_2__ hashbin_t ;
struct TYPE_11__ {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ hints; int info; } ;
struct TYPE_13__ {TYPE_1__ data; int firststamp; int timestamp; } ;
typedef TYPE_3__ discovery_t ;
typedef int __u16 ;


 scalar_t__ get_unaligned (int *) ;
 scalar_t__ hashbin_get_first (TYPE_2__*) ;
 scalar_t__ hashbin_get_next (TYPE_2__*) ;
 int hashbin_insert (TYPE_2__*,int *,scalar_t__,int *) ;
 int hashbin_remove_this (TYPE_2__*,int *) ;
 int kfree (TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strcmp (int ,int ) ;

void irlmp_add_discovery(hashbin_t *cachelog, discovery_t *new)
{
 discovery_t *discovery, *node;
 unsigned long flags;


 new->firststamp = new->timestamp;

 spin_lock_irqsave(&cachelog->hb_spinlock, flags);







 discovery = (discovery_t *) hashbin_get_first(cachelog);
 while (discovery != ((void*)0) ) {
  node = discovery;


  discovery = (discovery_t *) hashbin_get_next(cachelog);

  if ((node->data.saddr == new->data.saddr) &&
      ((node->data.daddr == new->data.daddr) ||
       (strcmp(node->data.info, new->data.info) == 0)))
  {



   hashbin_remove_this(cachelog, (irda_queue_t *) node);

   if (get_unaligned((__u16 *)node->data.hints) == get_unaligned((__u16 *)new->data.hints))

    new->firststamp = node->firststamp;
   kfree(node);
  }
 }


 hashbin_insert(cachelog, (irda_queue_t *) new, new->data.daddr, ((void*)0));

 spin_unlock_irqrestore(&cachelog->hb_spinlock, flags);
}
