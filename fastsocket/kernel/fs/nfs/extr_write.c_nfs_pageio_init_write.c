
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int wsize; } ;


 TYPE_1__* NFS_SERVER (struct inode*) ;
 int nfs_pageio_init (struct nfs_pageio_descriptor*,struct inode*,int *,struct nfs_pgio_completion_ops const*,int ,int) ;
 int nfs_pageio_write_ops ;

void nfs_pageio_init_write(struct nfs_pageio_descriptor *pgio,
          struct inode *inode, int ioflags,
          const struct nfs_pgio_completion_ops *compl_ops)
{
 nfs_pageio_init(pgio, inode, &nfs_pageio_write_ops, compl_ops,
    NFS_SERVER(inode)->wsize, ioflags);
}
