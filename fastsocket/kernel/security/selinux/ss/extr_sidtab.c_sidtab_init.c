
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sidtab {int next_sid; int lock; scalar_t__ shutdown; scalar_t__ nel; int ** htable; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int SIDTAB_SIZE ;
 int ** kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

int sidtab_init(struct sidtab *s)
{
 int i;

 s->htable = kmalloc(sizeof(*(s->htable)) * SIDTAB_SIZE, GFP_ATOMIC);
 if (!s->htable)
  return -ENOMEM;
 for (i = 0; i < SIDTAB_SIZE; i++)
  s->htable[i] = ((void*)0);
 s->nel = 0;
 s->next_sid = 1;
 s->shutdown = 0;
 spin_lock_init(&s->lock);
 return 0;
}
