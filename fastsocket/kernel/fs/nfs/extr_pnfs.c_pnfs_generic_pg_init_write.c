
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; int pg_inode; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_pgbase; int wb_bytes; int wb_context; } ;


 int BUG_ON (int ) ;
 int GFP_NOFS ;
 int IOMODE_RW ;
 int nfs_pageio_reset_write_mds (struct nfs_pageio_descriptor*) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int ) ;
 int req_offset (struct nfs_page*) ;

void
pnfs_generic_pg_init_write(struct nfs_pageio_descriptor *pgio, struct nfs_page *req)
{
 BUG_ON(pgio->pg_lseg != ((void*)0));

 if (req->wb_offset != req->wb_pgbase) {
  nfs_pageio_reset_write_mds(pgio);
  return;
 }
 pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
        req->wb_context,
        req_offset(req),
        req->wb_bytes,
        IOMODE_RW,
        GFP_NOFS);

 if (pgio->pg_lseg == ((void*)0))
  nfs_pageio_reset_write_mds(pgio);
}
