
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fattr; int fh; int dir_cinfo; int seq_res; } ;
struct TYPE_6__ {int seq_args; } ;
struct nfs4_createdata {TYPE_1__ res; TYPE_2__ arg; int msg; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int client; } ;


 TYPE_3__* NFS_SERVER (struct inode*) ;
 int nfs4_call_sync (int ,TYPE_3__*,int *,int *,int *,int) ;
 int nfs_instantiate (struct dentry*,int ,int ) ;
 int update_changeattr (struct inode*,int *) ;

__attribute__((used)) static int nfs4_do_create(struct inode *dir, struct dentry *dentry, struct nfs4_createdata *data)
{
 int status = nfs4_call_sync(NFS_SERVER(dir)->client, NFS_SERVER(dir), &data->msg,
        &data->arg.seq_args, &data->res.seq_res, 1);
 if (status == 0) {
  update_changeattr(dir, &data->res.dir_cinfo);
  status = nfs_instantiate(dentry, data->res.fh, data->res.fattr);
 }
 return status;
}
