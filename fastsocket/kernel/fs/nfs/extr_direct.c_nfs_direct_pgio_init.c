
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int dreq; } ;


 int get_dreq (int ) ;

__attribute__((used)) static void nfs_direct_pgio_init(struct nfs_pgio_header *hdr)
{
 get_dreq(hdr->dreq);
}
