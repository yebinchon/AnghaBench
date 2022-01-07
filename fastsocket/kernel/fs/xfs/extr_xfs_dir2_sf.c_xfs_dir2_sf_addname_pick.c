
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {int m_dirblksize; } ;
typedef TYPE_4__ xfs_mount_t ;
struct TYPE_17__ {scalar_t__ if_data; } ;
struct TYPE_18__ {TYPE_1__ if_u1; } ;
struct TYPE_21__ {TYPE_2__ i_df; TYPE_4__* i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
struct TYPE_19__ {int count; } ;
struct TYPE_22__ {TYPE_3__ hdr; } ;
typedef TYPE_6__ xfs_dir2_sf_t ;
struct TYPE_23__ {int namelen; } ;
typedef TYPE_7__ xfs_dir2_sf_entry_t ;
typedef int xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_data_aoff_t ;
typedef int xfs_dir2_block_tail_t ;
struct TYPE_24__ {int namelen; TYPE_5__* dp; } ;
typedef TYPE_8__ xfs_da_args_t ;
typedef int uint ;


 int ASSERT (int) ;
 int XFS_DIR2_DATA_FIRST_OFFSET ;
 int xfs_dir2_data_entsize (int ) ;
 TYPE_7__* xfs_dir2_sf_firstentry (TYPE_6__*) ;
 int xfs_dir2_sf_get_offset (TYPE_7__*) ;
 TYPE_7__* xfs_dir2_sf_nextentry (TYPE_6__*,TYPE_7__*) ;

__attribute__((used)) static int
xfs_dir2_sf_addname_pick(
 xfs_da_args_t *args,
 int objchange,
 xfs_dir2_sf_entry_t **sfepp,
 xfs_dir2_data_aoff_t *offsetp)
{
 xfs_inode_t *dp;
 int holefit;
 int i;
 xfs_mount_t *mp;
 xfs_dir2_data_aoff_t offset;
 xfs_dir2_sf_entry_t *sfep;
 xfs_dir2_sf_t *sfp;
 int size;
 int used;

 dp = args->dp;
 mp = dp->i_mount;

 sfp = (xfs_dir2_sf_t *)dp->i_df.if_u1.if_data;
 size = xfs_dir2_data_entsize(args->namelen);
 offset = XFS_DIR2_DATA_FIRST_OFFSET;
 sfep = xfs_dir2_sf_firstentry(sfp);
 holefit = 0;





 for (i = 0; i < sfp->hdr.count; i++) {
  if (!holefit)
   holefit = offset + size <= xfs_dir2_sf_get_offset(sfep);
  offset = xfs_dir2_sf_get_offset(sfep) +
    xfs_dir2_data_entsize(sfep->namelen);
  sfep = xfs_dir2_sf_nextentry(sfp, sfep);
 }




 used = offset +
        (sfp->hdr.count + 3) * (uint)sizeof(xfs_dir2_leaf_entry_t) +
        (uint)sizeof(xfs_dir2_block_tail_t);





 if (used + (holefit ? 0 : size) > mp->m_dirblksize)
  return 0;
 ASSERT(objchange == 0);




 if (used + size > mp->m_dirblksize)
  return 2;



 *sfepp = sfep;
 *offsetp = offset;
 return 1;
}
