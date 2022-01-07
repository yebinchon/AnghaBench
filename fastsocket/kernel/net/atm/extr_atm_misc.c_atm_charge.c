
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_vcc {TYPE_1__* stats; } ;
struct TYPE_4__ {scalar_t__ sk_rcvbuf; int sk_rmem_alloc; } ;
struct TYPE_3__ {int rx_drop; } ;


 int atm_force_charge (struct atm_vcc*,int) ;
 int atm_return (struct atm_vcc*,int) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 TYPE_2__* sk_atm (struct atm_vcc*) ;

int atm_charge(struct atm_vcc *vcc,int truesize)
{
 atm_force_charge(vcc,truesize);
 if (atomic_read(&sk_atm(vcc)->sk_rmem_alloc) <= sk_atm(vcc)->sk_rcvbuf)
  return 1;
 atm_return(vcc,truesize);
 atomic_inc(&vcc->stats->rx_drop);
 return 0;
}
