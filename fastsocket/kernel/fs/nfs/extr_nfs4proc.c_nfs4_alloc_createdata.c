
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qstr {int dummy; } ;
struct nfs_server {int attr_bitmask; } ;
struct TYPE_6__ {int * fattr; int * fh; struct nfs_server* server; } ;
struct TYPE_5__ {int bitmask; int ftype; struct iattr* attrs; struct qstr* name; struct nfs_server* server; int dir_fh; } ;
struct TYPE_4__ {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int * rpc_proc; } ;
struct nfs4_createdata {TYPE_3__ res; int fattr; int fh; TYPE_2__ arg; TYPE_1__ msg; } ;
struct inode {int dummy; } ;
struct iattr {int dummy; } ;


 int GFP_KERNEL ;
 size_t NFSPROC4_CLNT_CREATE ;
 int NFS_FH (struct inode*) ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 struct nfs4_createdata* kzalloc (int,int ) ;
 int * nfs4_procedures ;
 int nfs_fattr_init (int *) ;

__attribute__((used)) static struct nfs4_createdata *nfs4_alloc_createdata(struct inode *dir,
  struct qstr *name, struct iattr *sattr, u32 ftype)
{
 struct nfs4_createdata *data;

 data = kzalloc(sizeof(*data), GFP_KERNEL);
 if (data != ((void*)0)) {
  struct nfs_server *server = NFS_SERVER(dir);

  data->msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_CREATE];
  data->msg.rpc_argp = &data->arg;
  data->msg.rpc_resp = &data->res;
  data->arg.dir_fh = NFS_FH(dir);
  data->arg.server = server;
  data->arg.name = name;
  data->arg.attrs = sattr;
  data->arg.ftype = ftype;
  data->arg.bitmask = server->attr_bitmask;
  data->res.server = server;
  data->res.fh = &data->fh;
  data->res.fattr = &data->fattr;
  nfs_fattr_init(data->res.fattr);
 }
 return data;
}
