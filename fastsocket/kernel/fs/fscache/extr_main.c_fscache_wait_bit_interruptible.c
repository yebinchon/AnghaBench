
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int schedule () ;
 int signal_pending (int ) ;

int fscache_wait_bit_interruptible(void *flags)
{
 schedule();
 return signal_pending(current);
}
