
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxfs_sb_info {int vsi_fshino; } ;
struct vxfs_oltfshead {int * olt_fsino; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static inline void
vxfs_get_fshead(struct vxfs_oltfshead *fshp, struct vxfs_sb_info *infp)
{
 BUG_ON(infp->vsi_fshino);
 infp->vsi_fshino = fshp->olt_fsino[0];
}
