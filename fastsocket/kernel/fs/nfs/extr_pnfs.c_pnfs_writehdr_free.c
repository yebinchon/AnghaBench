
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int lseg; } ;


 int nfs_writehdr_free (struct nfs_pgio_header*) ;
 int put_lseg (int ) ;

__attribute__((used)) static void pnfs_writehdr_free(struct nfs_pgio_header *hdr)
{
 put_lseg(hdr->lseg);
 nfs_writehdr_free(hdr);
}
