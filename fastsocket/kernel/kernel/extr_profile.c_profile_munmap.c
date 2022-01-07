
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_notifier_call_chain (int *,int ,void*) ;
 int munmap_notifier ;

void profile_munmap(unsigned long addr)
{
 blocking_notifier_call_chain(&munmap_notifier, 0, (void *)addr);
}
