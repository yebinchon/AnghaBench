
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {scalar_t__ auto_msgmni; int ipcns_nb; } ;


 int blocking_notifier_chain_unregister (int *,int *) ;
 int ipcns_chain ;

void unregister_ipcns_notifier(struct ipc_namespace *ns)
{
 blocking_notifier_chain_unregister(&ipcns_chain, &ns->ipcns_nb);
 ns->auto_msgmni = 0;
}
