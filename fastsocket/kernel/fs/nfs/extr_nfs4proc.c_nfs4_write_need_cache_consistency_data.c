
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_write_data {int * ds_clp; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {int inode; int * dreq; } ;


 int FMODE_READ ;
 scalar_t__ nfs_have_delegation (int ,int ) ;

__attribute__((used)) static
bool nfs4_write_need_cache_consistency_data(const struct nfs_write_data *data)
{
 const struct nfs_pgio_header *hdr = data->header;


 if (data->ds_clp != ((void*)0) || hdr->dreq != ((void*)0))
  return 0;



 return nfs_have_delegation(hdr->inode, FMODE_READ) == 0;
}
