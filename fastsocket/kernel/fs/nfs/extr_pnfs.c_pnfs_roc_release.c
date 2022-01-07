
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pnfs_layout_hdr {int plh_block_lgets; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int pnfs_put_layout_hdr_locked (struct pnfs_layout_hdr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnfs_roc_release(struct inode *ino)
{
 struct pnfs_layout_hdr *lo;

 spin_lock(&ino->i_lock);
 lo = NFS_I(ino)->layout;
 lo->plh_block_lgets--;
 pnfs_put_layout_hdr_locked(lo);
 spin_unlock(&ino->i_lock);
}
