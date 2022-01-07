
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_openres {int rflags; } ;
struct nfs4_opendata {int f_attr; int rpc_done; struct nfs_openres o_res; TYPE_1__* dir; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int NFS4_OPEN_RESULT_CONFIRM ;
 int NFS_SERVER (struct inode*) ;
 int _nfs4_proc_open_confirm (struct nfs4_opendata*) ;
 int nfs4_run_open_task (struct nfs4_opendata*,int) ;
 int nfs_fattr_map_and_free_names (int ,int *) ;

__attribute__((used)) static int _nfs4_recover_proc_open(struct nfs4_opendata *data)
{
 struct inode *dir = data->dir->d_inode;
 struct nfs_openres *o_res = &data->o_res;
        int status;

 status = nfs4_run_open_task(data, 1);
 if (status != 0 || !data->rpc_done)
  return status;

 nfs_fattr_map_and_free_names(NFS_SERVER(dir), &data->f_attr);

 if (o_res->rflags & NFS4_OPEN_RESULT_CONFIRM) {
  status = _nfs4_proc_open_confirm(data);
  if (status != 0)
   return status;
 }

 return status;
}
