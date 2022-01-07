
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blocking_notifier_call_chain (int *,unsigned long,int *) ;
 int ipcns_chain ;

int ipcns_notify(unsigned long val)
{
 return blocking_notifier_call_chain(&ipcns_chain, val, ((void*)0));
}
