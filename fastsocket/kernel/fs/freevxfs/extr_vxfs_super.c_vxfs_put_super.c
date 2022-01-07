
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_sb_info {int vsi_bp; int vsi_stilist; int vsi_ilist; int vsi_fship; } ;
struct super_block {int dummy; } ;


 struct vxfs_sb_info* VXFS_SBI (struct super_block*) ;
 int brelse (int ) ;
 int kfree (struct vxfs_sb_info*) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int vxfs_put_fake_inode (int ) ;

__attribute__((used)) static void
vxfs_put_super(struct super_block *sbp)
{
 struct vxfs_sb_info *infp = VXFS_SBI(sbp);

 lock_kernel();

 vxfs_put_fake_inode(infp->vsi_fship);
 vxfs_put_fake_inode(infp->vsi_ilist);
 vxfs_put_fake_inode(infp->vsi_stilist);

 brelse(infp->vsi_bp);
 kfree(infp);

 unlock_kernel();
}
