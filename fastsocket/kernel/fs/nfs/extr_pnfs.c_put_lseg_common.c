
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_segment {TYPE_1__* pls_layout; int pls_list; int pls_flags; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int roc_rpcwaitq; } ;
struct TYPE_3__ {int plh_flags; int plh_segs; struct inode* plh_inode; } ;


 int NFS_LAYOUT_DESTROYED ;
 int NFS_LSEG_VALID ;
 TYPE_2__* NFS_SERVER (struct inode*) ;
 int WARN_ON (int ) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int pnfs_put_layout_hdr_locked (TYPE_1__*) ;
 int rpc_wake_up (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
put_lseg_common(struct pnfs_layout_segment *lseg)
{
 struct inode *inode = lseg->pls_layout->plh_inode;

 WARN_ON(test_bit(NFS_LSEG_VALID, &lseg->pls_flags));
 list_del_init(&lseg->pls_list);
 if (list_empty(&lseg->pls_layout->plh_segs)) {
  set_bit(NFS_LAYOUT_DESTROYED, &lseg->pls_layout->plh_flags);

  pnfs_put_layout_hdr_locked(lseg->pls_layout);
 }
 rpc_wake_up(&NFS_SERVER(inode)->roc_rpcwaitq);
}
