
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int proc_inum; int count; } ;


 int ENOMEM ;
 struct ipc_namespace* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IPCNS_CREATED ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int ipcns_notify (int ) ;
 int kfree (struct ipc_namespace*) ;
 struct ipc_namespace* kmalloc (int,int ) ;
 int mq_init_ns (struct ipc_namespace*) ;
 int msg_init_ns (struct ipc_namespace*) ;
 int nr_ipc_ns ;
 int proc_alloc_inum (int *) ;
 int proc_free_inum (int ) ;
 int register_ipcns_notifier (struct ipc_namespace*) ;
 int sem_init_ns (struct ipc_namespace*) ;
 int shm_init_ns (struct ipc_namespace*) ;

__attribute__((used)) static struct ipc_namespace *create_ipc_ns(void)
{
 struct ipc_namespace *ns;
 int err;

 ns = kmalloc(sizeof(struct ipc_namespace), GFP_KERNEL);
 if (ns == ((void*)0))
  return ERR_PTR(-ENOMEM);

 err = proc_alloc_inum(&ns->proc_inum);
 if (err) {
  kfree(ns);
  return ERR_PTR(err);
 }

 atomic_set(&ns->count, 1);
 err = mq_init_ns(ns);
 if (err) {
  proc_free_inum(ns->proc_inum);
  kfree(ns);
  return ERR_PTR(err);
 }
 atomic_inc(&nr_ipc_ns);

 sem_init_ns(ns);
 msg_init_ns(ns);
 shm_init_ns(ns);






 ipcns_notify(IPCNS_CREATED);
 register_ipcns_notifier(ns);

 return ns;
}
