
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_params {scalar_t__ key; } ;
struct ipc_ops {int dummy; } ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int dummy; } ;


 scalar_t__ IPC_PRIVATE ;
 int ipcget_new (struct ipc_namespace*,struct ipc_ids*,struct ipc_ops*,struct ipc_params*) ;
 int ipcget_public (struct ipc_namespace*,struct ipc_ids*,struct ipc_ops*,struct ipc_params*) ;

int ipcget(struct ipc_namespace *ns, struct ipc_ids *ids,
   struct ipc_ops *ops, struct ipc_params *params)
{
 if (params->key == IPC_PRIVATE)
  return ipcget_new(ns, ids, ops, params);
 else
  return ipcget_public(ns, ids, ops, params);
}
