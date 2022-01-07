
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_reader {int r_link; } ;
struct mon_bus {scalar_t__ nreaders; int ref; int lock; } ;


 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mon_bus_drop ;
 int mon_stop (struct mon_bus*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mon_reader_del(struct mon_bus *mbus, struct mon_reader *r)
{
 unsigned long flags;

 spin_lock_irqsave(&mbus->lock, flags);
 list_del(&r->r_link);
 --mbus->nreaders;
 if (mbus->nreaders == 0)
  mon_stop(mbus);
 spin_unlock_irqrestore(&mbus->lock, flags);

 kref_put(&mbus->ref, mon_bus_drop);
}
