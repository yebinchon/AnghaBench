
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pageio_descriptor {int pg_inode; int pg_bsize; int * pg_ops; } ;
struct TYPE_2__ {int rsize; } ;


 TYPE_1__* NFS_SERVER (int ) ;
 int nfs_pageio_read_ops ;

void nfs_pageio_reset_read_mds(struct nfs_pageio_descriptor *pgio)
{
 pgio->pg_ops = &nfs_pageio_read_ops;
 pgio->pg_bsize = NFS_SERVER(pgio->pg_inode)->rsize;
}
