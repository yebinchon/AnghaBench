
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xfs_mount_t ;
struct TYPE_12__ {int * i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef scalar_t__ xfs_ino_t ;
typedef int xfs_dir2_sf_t ;
typedef int xfs_dir2_sf_off_t ;
struct TYPE_13__ {int count; int i8count; int parent; } ;
typedef TYPE_2__ xfs_dir2_sf_hdr_t ;
struct TYPE_14__ {int address; } ;
typedef TYPE_3__ xfs_dir2_leaf_entry_t ;
typedef int xfs_dir2_ino8_t ;
typedef int xfs_dir2_ino4_t ;
typedef int xfs_dir2_dataptr_t ;
struct TYPE_15__ {int namelen; char* name; int inumber; } ;
typedef TYPE_4__ xfs_dir2_data_entry_t ;
struct TYPE_16__ {int count; } ;
typedef TYPE_5__ xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
typedef int uint ;


 scalar_t__ XFS_DIR2_MAX_SHORT_INUM ;
 int XFS_DIR2_NULL_DATAPTR ;
 int XFS_IFORK_DSIZE (TYPE_1__*) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 TYPE_3__* xfs_dir2_block_leaf_p (TYPE_5__*) ;
 TYPE_5__* xfs_dir2_block_tail_p (int *,int *) ;
 int xfs_dir2_dataptr_to_off (int *,int) ;
 int xfs_dir2_sf_hdr_size (int) ;
 int xfs_dir2_sf_put_inumber (int *,scalar_t__*,int *) ;

int
xfs_dir2_block_sfsize(
 xfs_inode_t *dp,
 xfs_dir2_block_t *block,
 xfs_dir2_sf_hdr_t *sfhp)
{
 xfs_dir2_dataptr_t addr;
 xfs_dir2_leaf_entry_t *blp;
 xfs_dir2_block_tail_t *btp;
 int count;
 xfs_dir2_data_entry_t *dep;
 int i;
 int i8count;
 int isdot;
 int isdotdot;
 xfs_mount_t *mp;
 int namelen;
 xfs_ino_t parent = 0;
 int size=0;

 mp = dp->i_mount;

 count = i8count = namelen = 0;
 btp = xfs_dir2_block_tail_p(mp, block);
 blp = xfs_dir2_block_leaf_p(btp);




 for (i = 0; i < be32_to_cpu(btp->count); i++) {
  if ((addr = be32_to_cpu(blp[i].address)) == XFS_DIR2_NULL_DATAPTR)
   continue;



  dep = (xfs_dir2_data_entry_t *)
        ((char *)block + xfs_dir2_dataptr_to_off(mp, addr));





  isdot = dep->namelen == 1 && dep->name[0] == '.';
  isdotdot =
   dep->namelen == 2 &&
   dep->name[0] == '.' && dep->name[1] == '.';




  if (!isdot && !isdotdot) {
   count++;
   namelen += dep->namelen;
  } else if (isdotdot)
   parent = be64_to_cpu(dep->inumber);



  size = xfs_dir2_sf_hdr_size(i8count) +
         count +
         count * (uint)sizeof(xfs_dir2_sf_off_t) +
         namelen +
         (i8count ?
    (uint)sizeof(xfs_dir2_ino8_t) * count :
    (uint)sizeof(xfs_dir2_ino4_t) * count);
  if (size > XFS_IFORK_DSIZE(dp))
   return size;
 }



 sfhp->count = count;
 sfhp->i8count = i8count;
 xfs_dir2_sf_put_inumber((xfs_dir2_sf_t *)sfhp, &parent, &sfhp->parent);
 return size;
}
