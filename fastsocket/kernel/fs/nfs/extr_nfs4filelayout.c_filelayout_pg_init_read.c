
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int * pg_lseg; int pg_inode; } ;
struct nfs_page {scalar_t__ wb_offset; scalar_t__ wb_pgbase; int wb_context; } ;


 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int IOMODE_READ ;
 int NFS4_MAX_UINT64 ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 int * pnfs_update_layout (int ,int ,int ,int ,int ,int ) ;

void
filelayout_pg_init_read(struct nfs_pageio_descriptor *pgio,
   struct nfs_page *req)
{
 BUG_ON(pgio->pg_lseg != ((void*)0));

 if (req->wb_offset != req->wb_pgbase) {






  nfs_pageio_reset_read_mds(pgio);
  return;
 }
 pgio->pg_lseg = pnfs_update_layout(pgio->pg_inode,
        req->wb_context,
        0,
        NFS4_MAX_UINT64,
        IOMODE_READ,
        GFP_KERNEL);

 if (pgio->pg_lseg == ((void*)0))
  nfs_pageio_reset_read_mds(pgio);
}
