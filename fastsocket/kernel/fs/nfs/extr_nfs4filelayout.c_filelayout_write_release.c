
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_write_data {TYPE_2__* header; } ;
struct TYPE_4__ {TYPE_1__* mds_ops; } ;
struct TYPE_3__ {int (* rpc_release ) (void*) ;} ;


 int stub1 (void*) ;

__attribute__((used)) static void filelayout_write_release(void *data)
{
 struct nfs_write_data *wdata = data;

 wdata->header->mds_ops->rpc_release(data);
}
