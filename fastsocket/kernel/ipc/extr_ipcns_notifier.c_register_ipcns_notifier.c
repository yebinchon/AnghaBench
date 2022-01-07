
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priority; int notifier_call; } ;
struct ipc_namespace {int auto_msgmni; TYPE_1__ ipcns_nb; } ;


 int IPCNS_CALLBACK_PRI ;
 int blocking_notifier_chain_register (int *,TYPE_1__*) ;
 int ipcns_callback ;
 int ipcns_chain ;
 int memset (TYPE_1__*,int ,int) ;

int register_ipcns_notifier(struct ipc_namespace *ns)
{
 int rc;

 memset(&ns->ipcns_nb, 0, sizeof(ns->ipcns_nb));
 ns->ipcns_nb.notifier_call = ipcns_callback;
 ns->ipcns_nb.priority = IPCNS_CALLBACK_PRI;
 rc = blocking_notifier_chain_register(&ipcns_chain, &ns->ipcns_nb);
 if (!rc)
  ns->auto_msgmni = 1;
 return rc;
}
