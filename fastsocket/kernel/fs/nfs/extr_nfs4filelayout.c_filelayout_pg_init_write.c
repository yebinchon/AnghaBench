
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; int pg_dreq; int pg_inode; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_pgbase; int wb_context; } ;
struct nfs_commit_info {int dummy; } ;


 int BUG_ON (int ) ;
 int GFP_NOFS ;
 int IOMODE_RW ;
 int NFS4_MAX_UINT64 ;
 int filelayout_alloc_commit_info (int *,struct nfs_commit_info*,int ) ;
 int nfs_init_cinfo (struct nfs_commit_info*,int ,int ) ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int ) ;
 int put_lseg (int *) ;

void
filelayout_pg_init_write(struct nfs_pageio_descriptor *pgio,
    struct nfs_page *req)
{
 struct nfs_commit_info cinfo;
 int status;

 BUG_ON(pgio->pg_lseg != ((void*)0));

 if (req->wb_offset != req->wb_pgbase)
  goto out_mds;
 pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
        req->wb_context,
        0,
        NFS4_MAX_UINT64,
        IOMODE_RW,
        GFP_NOFS);

 if (pgio->pg_lseg == ((void*)0))
  goto out_mds;
 nfs_init_cinfo(&cinfo, pgio->pg_inode, pgio->pg_dreq);
 status = filelayout_alloc_commit_info(pgio->pg_lseg, &cinfo, GFP_NOFS);
 if (status < 0) {
  put_lseg(pgio->pg_lseg);
  pgio->pg_lseg = ((void*)0);
  goto out_mds;
 }
 return;
out_mds:
 nfs_pageio_reset_write_mds(pgio);
}
