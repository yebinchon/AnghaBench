
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vxfs_sb_info {TYPE_1__* vsi_raw; } ;
struct kstatfs {int f_namelen; int f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; int f_bfree; int f_blocks; int f_bsize; int f_type; } ;
struct dentry {TYPE_2__* d_sb; } ;
struct TYPE_4__ {int s_blocksize; } ;
struct TYPE_3__ {int vs_ifree; int vs_free; int vs_dsize; } ;


 int VXFS_NAMELEN ;
 struct vxfs_sb_info* VXFS_SBI (TYPE_2__*) ;
 int VXFS_SUPER_MAGIC ;

__attribute__((used)) static int
vxfs_statfs(struct dentry *dentry, struct kstatfs *bufp)
{
 struct vxfs_sb_info *infp = VXFS_SBI(dentry->d_sb);

 bufp->f_type = VXFS_SUPER_MAGIC;
 bufp->f_bsize = dentry->d_sb->s_blocksize;
 bufp->f_blocks = infp->vsi_raw->vs_dsize;
 bufp->f_bfree = infp->vsi_raw->vs_free;
 bufp->f_bavail = 0;
 bufp->f_files = 0;
 bufp->f_ffree = infp->vsi_raw->vs_ifree;
 bufp->f_namelen = VXFS_NAMELEN;

 return 0;
}
