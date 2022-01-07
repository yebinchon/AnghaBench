
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_write_data {TYPE_2__* header; } ;
struct TYPE_6__ {TYPE_1__* client; } ;
struct TYPE_5__ {int inode; } ;
struct TYPE_4__ {int cl_metrics; } ;


 TYPE_3__* NFS_SERVER (int ) ;
 int rpc_count_iostats (struct rpc_task*,int ) ;

__attribute__((used)) static void filelayout_write_count_stats(struct rpc_task *task, void *data)
{
 struct nfs_write_data *wdata = (struct nfs_write_data *)data;

 rpc_count_iostats(task, NFS_SERVER(wdata->header->inode)->client->cl_metrics);
}
