
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {scalar_t__ key; } ;
struct ipc_ids {int in_use; int ipcs_idr; } ;
typedef scalar_t__ key_t ;


 struct kern_ipc_perm* idr_find (int *,int) ;
 int ipc_lock_by_ptr (struct kern_ipc_perm*) ;

__attribute__((used)) static struct kern_ipc_perm *ipc_findkey(struct ipc_ids *ids, key_t key)
{
 struct kern_ipc_perm *ipc;
 int next_id;
 int total;

 for (total = 0, next_id = 0; total < ids->in_use; next_id++) {
  ipc = idr_find(&ids->ipcs_idr, next_id);

  if (ipc == ((void*)0))
   continue;

  if (ipc->key != key) {
   total++;
   continue;
  }

  ipc_lock_by_ptr(ipc);
  return ipc;
 }

 return ((void*)0);
}
