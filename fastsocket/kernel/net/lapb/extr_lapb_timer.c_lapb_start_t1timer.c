
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int * function; } ;
struct lapb_cb {TYPE_1__ t1timer; scalar_t__ t1; } ;


 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int lapb_t1timer_expiry ;

void lapb_start_t1timer(struct lapb_cb *lapb)
{
 del_timer(&lapb->t1timer);

 lapb->t1timer.data = (unsigned long)lapb;
 lapb->t1timer.function = &lapb_t1timer_expiry;
 lapb->t1timer.expires = jiffies + lapb->t1;

 add_timer(&lapb->t1timer);
}
