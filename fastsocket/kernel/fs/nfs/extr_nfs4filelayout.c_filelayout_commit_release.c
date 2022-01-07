
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_commit_data {int lseg; TYPE_1__* completion_ops; } ;
struct TYPE_2__ {int (* completion ) (struct nfs_commit_data*) ;} ;


 int nfs_commitdata_release (struct nfs_commit_data*) ;
 int put_lseg (int ) ;
 int stub1 (struct nfs_commit_data*) ;

__attribute__((used)) static void filelayout_commit_release(void *calldata)
{
 struct nfs_commit_data *data = calldata;

 data->completion_ops->completion(data);
 put_lseg(data->lseg);
 nfs_commitdata_release(data);
}
