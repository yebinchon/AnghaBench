
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {TYPE_2__* pnfs_curr_ld; } ;
struct TYPE_3__ {int inode; } ;
struct nfs4_layoutcommit_data {TYPE_1__ args; } ;
struct TYPE_4__ {int (* cleanup_layoutcommit ) (struct nfs4_layoutcommit_data*) ;} ;


 struct nfs_server* NFS_SERVER (int ) ;
 int stub1 (struct nfs4_layoutcommit_data*) ;

void pnfs_cleanup_layoutcommit(struct nfs4_layoutcommit_data *data)
{
 struct nfs_server *nfss = NFS_SERVER(data->args.inode);

 if (nfss->pnfs_curr_ld->cleanup_layoutcommit)
  nfss->pnfs_curr_ld->cleanup_layoutcommit(data);
}
