
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_notifier_call_chain (int *,unsigned long,void*) ;
 int dcbevent_notif_chain ;

int call_dcbevent_notifiers(unsigned long val, void *v)
{
 return atomic_notifier_call_chain(&dcbevent_notif_chain, val, v);
}
