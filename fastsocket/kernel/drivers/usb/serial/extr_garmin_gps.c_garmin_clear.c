
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct garmin_data {int lock; scalar_t__ outsize; scalar_t__ insize; } ;


 int pkt_clear (struct garmin_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int garmin_clear(struct garmin_data *garmin_data_p)
{
 unsigned long flags;
 int status = 0;


 pkt_clear(garmin_data_p);

 spin_lock_irqsave(&garmin_data_p->lock, flags);
 garmin_data_p->insize = 0;
 garmin_data_p->outsize = 0;
 spin_unlock_irqrestore(&garmin_data_p->lock, flags);

 return status;
}
