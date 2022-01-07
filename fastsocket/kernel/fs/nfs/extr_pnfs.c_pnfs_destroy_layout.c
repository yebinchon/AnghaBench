
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_hdr {int plh_block_lgets; } ;
struct TYPE_2__ {int i_lock; } ;
struct nfs_inode {TYPE_1__ vfs_inode; struct pnfs_layout_hdr* layout; } ;


 int LIST_HEAD (int ) ;
 int mark_matching_lsegs_invalid (struct pnfs_layout_hdr*,int *,int *) ;
 int pnfs_free_lseg_list (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tmp_list ;

void
pnfs_destroy_layout(struct nfs_inode *nfsi)
{
 struct pnfs_layout_hdr *lo;
 LIST_HEAD(tmp_list);

 spin_lock(&nfsi->vfs_inode.i_lock);
 lo = nfsi->layout;
 if (lo) {
  lo->plh_block_lgets++;
  mark_matching_lsegs_invalid(lo, &tmp_list, ((void*)0));
 }
 spin_unlock(&nfsi->vfs_inode.i_lock);
 pnfs_free_lseg_list(&tmp_list);
}
