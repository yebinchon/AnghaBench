
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clockevents_chain ;
 int raw_notifier_call_chain (int *,unsigned long,void*) ;

__attribute__((used)) static void clockevents_do_notify(unsigned long reason, void *dev)
{
 raw_notifier_call_chain(&clockevents_chain, reason, dev);
}
