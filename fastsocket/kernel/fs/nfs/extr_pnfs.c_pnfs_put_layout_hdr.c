
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_refcount; struct inode* plh_inode; } ;
struct inode {int i_lock; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int destroy_layout_hdr (struct pnfs_layout_hdr*) ;
 int spin_unlock (int *) ;

void
pnfs_put_layout_hdr(struct pnfs_layout_hdr *lo)
{
 struct inode *inode = lo->plh_inode;

 if (atomic_dec_and_lock(&lo->plh_refcount, &inode->i_lock)) {
  destroy_layout_hdr(lo);
  spin_unlock(&inode->i_lock);
 }
}
