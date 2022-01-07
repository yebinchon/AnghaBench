
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {int caps; } ;
struct nfs_openres {int rflags; TYPE_2__* f_attr; int fh; int cinfo; } ;
struct nfs_openargs {int open_flags; } ;
struct nfs4_opendata {int f_attr; int rpc_done; struct nfs_openres o_res; struct nfs_openargs o_arg; TYPE_1__* dir; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int valid; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int ENOENT ;
 int NFS4ERR_BADNAME ;
 int NFS4_OPEN_RESULT_CONFIRM ;
 int NFS4_OPEN_RESULT_LOCKTYPE_POSIX ;
 int NFS_ATTR_FATTR ;
 int NFS_CAP_POSIX_LOCK ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int O_CREAT ;
 int _nfs4_proc_getattr (struct nfs_server*,int *,TYPE_2__*) ;
 int _nfs4_proc_open_confirm (struct nfs4_opendata*) ;
 int nfs4_run_open_task (struct nfs4_opendata*,int ) ;
 int nfs_fattr_map_and_free_names (struct nfs_server*,int *) ;
 int update_changeattr (struct inode*,int *) ;

__attribute__((used)) static int _nfs4_proc_open(struct nfs4_opendata *data)
{
 struct inode *dir = data->dir->d_inode;
 struct nfs_server *server = NFS_SERVER(dir);
 struct nfs_openargs *o_arg = &data->o_arg;
 struct nfs_openres *o_res = &data->o_res;
 int status;

 status = nfs4_run_open_task(data, 0);
 if (!data->rpc_done)
  return status;
 if (status != 0) {
  if (status == -NFS4ERR_BADNAME &&
    !(o_arg->open_flags & O_CREAT))
   return -ENOENT;
  return status;
 }

 nfs_fattr_map_and_free_names(server, &data->f_attr);

 if (o_arg->open_flags & O_CREAT)
  update_changeattr(dir, &o_res->cinfo);
 if ((o_res->rflags & NFS4_OPEN_RESULT_LOCKTYPE_POSIX) == 0)
  server->caps &= ~NFS_CAP_POSIX_LOCK;
 if(o_res->rflags & NFS4_OPEN_RESULT_CONFIRM) {
  status = _nfs4_proc_open_confirm(data);
  if (status != 0)
   return status;
 }
 if (!(o_res->f_attr->valid & NFS_ATTR_FATTR))
  _nfs4_proc_getattr(server, &o_res->fh, o_res->f_attr);
 return 0;
}
