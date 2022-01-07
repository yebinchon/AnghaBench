
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int loopback_timer ;
 int timer_pending (int *) ;

__attribute__((used)) static int rose_loopback_running(void)
{
 return timer_pending(&loopback_timer);
}
