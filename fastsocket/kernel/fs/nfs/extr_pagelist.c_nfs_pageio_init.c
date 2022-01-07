
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_completion_ops {int dummy; } ;
struct nfs_pageio_ops {int dummy; } ;
struct nfs_pageio_descriptor {size_t pg_bsize; int pg_ioflags; int * pg_dreq; int * pg_lseg; scalar_t__ pg_error; struct nfs_pgio_completion_ops const* pg_completion_ops; struct nfs_pageio_ops const* pg_ops; struct inode* pg_inode; scalar_t__ pg_recoalesce; scalar_t__ pg_moreio; scalar_t__ pg_base; scalar_t__ pg_count; scalar_t__ pg_bytes_written; int pg_list; } ;
struct inode {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;

void nfs_pageio_init(struct nfs_pageio_descriptor *desc,
       struct inode *inode,
       const struct nfs_pageio_ops *pg_ops,
       const struct nfs_pgio_completion_ops *compl_ops,
       size_t bsize,
       int io_flags)
{
 INIT_LIST_HEAD(&desc->pg_list);
 desc->pg_bytes_written = 0;
 desc->pg_count = 0;
 desc->pg_bsize = bsize;
 desc->pg_base = 0;
 desc->pg_moreio = 0;
 desc->pg_recoalesce = 0;
 desc->pg_inode = inode;
 desc->pg_ops = pg_ops;
 desc->pg_completion_ops = compl_ops;
 desc->pg_ioflags = io_flags;
 desc->pg_error = 0;
 desc->pg_lseg = ((void*)0);
 desc->pg_dreq = ((void*)0);
}
