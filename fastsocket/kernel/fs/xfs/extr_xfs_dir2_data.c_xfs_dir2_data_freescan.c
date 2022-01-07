
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int m_dirblksize; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_15__ {int length; int freetag; } ;
typedef TYPE_3__ xfs_dir2_data_unused_t ;
struct TYPE_13__ {int magic; int bestfree; } ;
struct TYPE_16__ {TYPE_1__ hdr; scalar_t__ u; } ;
typedef TYPE_4__ xfs_dir2_data_t ;
struct TYPE_17__ {int namelen; } ;
typedef TYPE_5__ xfs_dir2_data_entry_t ;
typedef int xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_FREE_TAG ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int memset (int ,int ,int) ;
 scalar_t__ xfs_dir2_block_leaf_p (int *) ;
 int * xfs_dir2_block_tail_p (TYPE_2__*,int *) ;
 int * xfs_dir2_data_entry_tag_p (TYPE_5__*) ;
 int xfs_dir2_data_entsize (int ) ;
 int xfs_dir2_data_freeinsert (TYPE_4__*,TYPE_3__*,int*) ;
 int * xfs_dir2_data_unused_tag_p (TYPE_3__*) ;

void
xfs_dir2_data_freescan(
 xfs_mount_t *mp,
 xfs_dir2_data_t *d,
 int *loghead)
{
 xfs_dir2_block_tail_t *btp;
 xfs_dir2_data_entry_t *dep;
 xfs_dir2_data_unused_t *dup;
 char *endp;
 char *p;
 memset(d->hdr.bestfree, 0, sizeof(d->hdr.bestfree));
 *loghead = 1;



 p = (char *)d->u;
 if (be32_to_cpu(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC) {
  btp = xfs_dir2_block_tail_p(mp, (xfs_dir2_block_t *)d);
  endp = (char *)xfs_dir2_block_leaf_p(btp);
 } else
  endp = (char *)d + mp->m_dirblksize;



 while (p < endp) {
  dup = (xfs_dir2_data_unused_t *)p;



  if (be16_to_cpu(dup->freetag) == XFS_DIR2_DATA_FREE_TAG) {
   ASSERT((char *)dup - (char *)d ==
          be16_to_cpu(*xfs_dir2_data_unused_tag_p(dup)));
   xfs_dir2_data_freeinsert(d, dup, loghead);
   p += be16_to_cpu(dup->length);
  }



  else {
   dep = (xfs_dir2_data_entry_t *)p;
   ASSERT((char *)dep - (char *)d ==
          be16_to_cpu(*xfs_dir2_data_entry_tag_p(dep)));
   p += xfs_dir2_data_entsize(dep->namelen);
  }
 }
}
