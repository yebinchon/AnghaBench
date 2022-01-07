
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_read_data {TYPE_1__* header; } ;
struct TYPE_2__ {int inode; } ;


 int nfs_invalidate_atime (int ) ;

void __nfs4_read_done_cb(struct nfs_read_data *data)
{
 nfs_invalidate_atime(data->header->inode);
}
