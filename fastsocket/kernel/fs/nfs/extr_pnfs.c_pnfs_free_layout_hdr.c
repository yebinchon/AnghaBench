
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layoutdriver_type {void (* free_layout_hdr ) (struct pnfs_layout_hdr*) ;scalar_t__ alloc_layout_hdr; } ;
struct pnfs_layout_hdr {int plh_lc_cred; int plh_inode; } ;
struct TYPE_2__ {struct pnfs_layoutdriver_type* pnfs_curr_ld; } ;


 TYPE_1__* NFS_SERVER (int ) ;
 void kfree (struct pnfs_layout_hdr*) ;
 int put_rpccred (int ) ;
 void stub1 (struct pnfs_layout_hdr*) ;

__attribute__((used)) static void
pnfs_free_layout_hdr(struct pnfs_layout_hdr *lo)
{
 struct pnfs_layoutdriver_type *ld = NFS_SERVER(lo->plh_inode)->pnfs_curr_ld;
 put_rpccred(lo->plh_lc_cred);
 return ld->alloc_layout_hdr ? ld->free_layout_hdr(lo) : kfree(lo);
}
