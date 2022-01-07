
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int lock; scalar_t__ deleted; } ;
struct ipc_ids {int ipcs_idr; } ;


 int EINVAL ;
 struct kern_ipc_perm* ERR_PTR (int ) ;
 struct kern_ipc_perm* idr_find (int *,int) ;
 int ipcid_to_idx (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct kern_ipc_perm *ipc_lock(struct ipc_ids *ids, int id)
{
 struct kern_ipc_perm *out;
 int lid = ipcid_to_idx(id);

 rcu_read_lock();
 out = idr_find(&ids->ipcs_idr, lid);
 if (out == ((void*)0)) {
  rcu_read_unlock();
  return ERR_PTR(-EINVAL);
 }

 spin_lock(&out->lock);




 if (out->deleted) {
  spin_unlock(&out->lock);
  rcu_read_unlock();
  return ERR_PTR(-EINVAL);
 }

 return out;
}
