
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int proc_inum; } ;


 int IPCNS_REMOVED ;
 int atomic_dec (int *) ;
 int ipcns_notify (int ) ;
 int kfree (struct ipc_namespace*) ;
 int msg_exit_ns (struct ipc_namespace*) ;
 int nr_ipc_ns ;
 int proc_free_inum (int ) ;
 int sem_exit_ns (struct ipc_namespace*) ;
 int shm_exit_ns (struct ipc_namespace*) ;
 int unregister_ipcns_notifier (struct ipc_namespace*) ;

__attribute__((used)) static void free_ipc_ns(struct ipc_namespace *ns)
{
 unregister_ipcns_notifier(ns);
 sem_exit_ns(ns);
 msg_exit_ns(ns);
 shm_exit_ns(ns);
 proc_free_inum(ns->proc_inum);
 kfree(ns);
 atomic_dec(&nr_ipc_ns);





 ipcns_notify(IPCNS_REMOVED);
}
