
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_read_data {struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {int pages; int flags; } ;
struct nfs_pageio_descriptor {int pg_recoalesce; int pg_list; } ;


 int NFS_IOHDR_REDO ;
 int list_splice_tail_init (int *,int *) ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 int nfs_readdata_release (struct nfs_read_data*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_read_through_mds(struct nfs_pageio_descriptor *desc,
  struct nfs_read_data *data)
{
 struct nfs_pgio_header *hdr = data->header;

 if (!test_and_set_bit(NFS_IOHDR_REDO, &hdr->flags)) {
  list_splice_tail_init(&hdr->pages, &desc->pg_list);
  nfs_pageio_reset_read_mds(desc);
  desc->pg_recoalesce = 1;
 }
 nfs_readdata_release(data);
}
