
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int ipc_ns; } ;


 int current ;
 int exit_sem (int ) ;
 int get_ipc_ns (void*) ;
 int put_ipc_ns (int ) ;

__attribute__((used)) static int ipcns_install(struct nsproxy *nsproxy, void *ns)
{

 exit_sem(current);
 put_ipc_ns(nsproxy->ipc_ns);
 nsproxy->ipc_ns = get_ipc_ns(ns);
 return 0;
}
