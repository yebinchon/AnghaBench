
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void put_ipc_ns (void*) ;

__attribute__((used)) static void ipcns_put(void *ns)
{
 return put_ipc_ns(ns);
}
