
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct inode {int dummy; } ;


 int nfs_pageio_init_read (struct nfs_pageio_descriptor*,struct inode*,struct nfs_pgio_completion_ops const*) ;

__attribute__((used)) static inline void pnfs_pageio_init_read(struct nfs_pageio_descriptor *pgio, struct inode *inode,
      const struct nfs_pgio_completion_ops *compl_ops)
{
 nfs_pageio_init_read(pgio, inode, compl_ops);
}
