
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int deleted; int id; } ;
struct ipc_ids {int in_use; int ipcs_idr; } ;


 int idr_remove (int *,int) ;
 int ipcid_to_idx (int ) ;

void ipc_rmid(struct ipc_ids *ids, struct kern_ipc_perm *ipcp)
{
 int lid = ipcid_to_idx(ipcp->id);

 idr_remove(&ids->ipcs_idr, lid);

 ids->in_use--;

 ipcp->deleted = 1;

 return;
}
