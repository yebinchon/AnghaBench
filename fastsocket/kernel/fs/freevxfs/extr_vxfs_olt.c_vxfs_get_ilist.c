
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_sb_info {int vsi_iext; } ;
struct vxfs_oltilist {int * olt_iext; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static inline void
vxfs_get_ilist(struct vxfs_oltilist *ilistp, struct vxfs_sb_info *infp)
{
 BUG_ON(infp->vsi_iext);
 infp->vsi_iext = ilistp->olt_iext[0];
}
