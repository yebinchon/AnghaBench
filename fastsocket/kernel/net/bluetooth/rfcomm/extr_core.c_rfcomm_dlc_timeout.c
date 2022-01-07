
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int flags; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ) ;
 int RFCOMM_SCHED_TIMEO ;
 int RFCOMM_TIMED_OUT ;
 int rfcomm_dlc_put (struct rfcomm_dlc*) ;
 int rfcomm_schedule (int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void rfcomm_dlc_timeout(unsigned long arg)
{
 struct rfcomm_dlc *d = (void *) arg;

 BT_DBG("dlc %p state %ld", d, d->state);

 set_bit(RFCOMM_TIMED_OUT, &d->flags);
 rfcomm_dlc_put(d);
 rfcomm_schedule(RFCOMM_SCHED_TIMEO);
}
