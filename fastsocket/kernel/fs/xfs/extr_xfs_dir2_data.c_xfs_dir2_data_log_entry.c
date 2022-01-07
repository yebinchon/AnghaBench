
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_6__ {int magic; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ xfs_dir2_data_t ;
typedef int xfs_dir2_data_entry_t ;
struct TYPE_8__ {TYPE_2__* data; } ;
typedef TYPE_3__ xfs_dabuf_t ;
typedef int uint ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 int xfs_da_log_buf (int *,TYPE_3__*,int ,int ) ;
 scalar_t__ xfs_dir2_data_entry_tag_p (int *) ;

void
xfs_dir2_data_log_entry(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp,
 xfs_dir2_data_entry_t *dep)
{
 xfs_dir2_data_t *d;

 d = bp->data;
 ASSERT(be32_to_cpu(d->hdr.magic) == XFS_DIR2_DATA_MAGIC ||
        be32_to_cpu(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);
 xfs_da_log_buf(tp, bp, (uint)((char *)dep - (char *)d),
  (uint)((char *)(xfs_dir2_data_entry_tag_p(dep) + 1) -
         (char *)d - 1));
}
