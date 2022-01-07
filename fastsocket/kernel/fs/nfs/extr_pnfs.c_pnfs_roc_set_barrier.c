
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pnfs_layout_hdr {scalar_t__ plh_barrier; } ;
struct inode {int i_lock; } ;
struct TYPE_2__ {struct pnfs_layout_hdr* layout; } ;


 TYPE_1__* NFS_I (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pnfs_roc_set_barrier(struct inode *ino, u32 barrier)
{
 struct pnfs_layout_hdr *lo;

 spin_lock(&ino->i_lock);
 lo = NFS_I(ino)->layout;
 if ((int)(barrier - lo->plh_barrier) > 0)
  lo->plh_barrier = barrier;
 spin_unlock(&ino->i_lock);
}
