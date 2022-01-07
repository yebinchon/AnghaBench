
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct kern_ipc_perm {int seq; int id; int cgid; int gid; int uid; int cuid; int lock; scalar_t__ deleted; } ;
struct ipc_ids {int in_use; scalar_t__ seq; scalar_t__ seq_max; int ipcs_idr; } ;
typedef int gid_t ;


 int ENOSPC ;
 int IPCMNI ;
 int current_euid_egid (int *,int *) ;
 int idr_get_new (int *,struct kern_ipc_perm*,int*) ;
 int ipc_buildid (int,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

int ipc_addid(struct ipc_ids* ids, struct kern_ipc_perm* new, int size)
{
 uid_t euid;
 gid_t egid;
 int id, err;

 if (size > IPCMNI)
  size = IPCMNI;

 if (ids->in_use >= size)
  return -ENOSPC;

 spin_lock_init(&new->lock);
 new->deleted = 0;
 rcu_read_lock();
 spin_lock(&new->lock);

 err = idr_get_new(&ids->ipcs_idr, new, &id);
 if (err) {
  spin_unlock(&new->lock);
  rcu_read_unlock();
  return err;
 }

 ids->in_use++;

 current_euid_egid(&euid, &egid);
 new->cuid = new->uid = euid;
 new->gid = new->cgid = egid;

 new->seq = ids->seq++;
 if(ids->seq > ids->seq_max)
  ids->seq = 0;

 new->id = ipc_buildid(id, new->seq);
 return id;
}
