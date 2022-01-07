
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int dummy; } ;


 unsigned long CLONE_NEWIPC ;
 struct ipc_namespace* create_ipc_ns () ;
 struct ipc_namespace* get_ipc_ns (struct ipc_namespace*) ;

struct ipc_namespace *copy_ipcs(unsigned long flags, struct ipc_namespace *ns)
{
 if (!(flags & CLONE_NEWIPC))
  return get_ipc_ns(ns);
 return create_ipc_ns();
}
