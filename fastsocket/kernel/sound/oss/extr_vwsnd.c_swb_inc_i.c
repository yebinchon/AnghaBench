
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ vwsnd_port_t ;


 unsigned int __swb_inc_i (TYPE_1__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __inline__ unsigned int swb_inc_i(vwsnd_port_t *port, int inc)
{
 unsigned long flags;
 unsigned int ret;

 spin_lock_irqsave(&port->lock, flags);
 {
  ret = __swb_inc_i(port, inc);
 }
 spin_unlock_irqrestore(&port->lock, flags);
 return ret;
}
