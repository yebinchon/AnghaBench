
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;
struct ipc_ids {int in_use; int ipcs_idr; } ;


 int IPCMNI ;
 struct kern_ipc_perm* idr_find (int *,int) ;

int ipc_get_maxid(struct ipc_ids *ids)
{
 struct kern_ipc_perm *ipc;
 int max_id = -1;
 int total, id;

 if (ids->in_use == 0)
  return -1;

 if (ids->in_use == IPCMNI)
  return IPCMNI - 1;


 total = 0;
 for (id = 0; id < IPCMNI && total < ids->in_use; id++) {
  ipc = idr_find(&ids->ipcs_idr, id);
  if (ipc != ((void*)0)) {
   max_id = id;
   total++;
  }
 }
 return max_id;
}
