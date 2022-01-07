
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_timer (unsigned long) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int xtime_lock ;

void xtime_update(unsigned long ticks)
{
 write_seqlock(&xtime_lock);
 do_timer(ticks);
 write_sequnlock(&xtime_lock);
}
