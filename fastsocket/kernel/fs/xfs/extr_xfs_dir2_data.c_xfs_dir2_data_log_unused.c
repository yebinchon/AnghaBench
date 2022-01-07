
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_10__ {int length; } ;
typedef TYPE_2__ xfs_dir2_data_unused_t ;
struct TYPE_9__ {int magic; } ;
struct TYPE_11__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ xfs_dir2_data_t ;
typedef int xfs_dir2_data_off_t ;
struct TYPE_12__ {TYPE_3__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
typedef int uint ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 int xfs_da_log_buf (int *,TYPE_4__*,int ,int ) ;
 scalar_t__ xfs_dir2_data_unused_tag_p (TYPE_2__*) ;

void
xfs_dir2_data_log_unused(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp,
 xfs_dir2_data_unused_t *dup)
{
 xfs_dir2_data_t *d;

 d = bp->data;
 ASSERT(be32_to_cpu(d->hdr.magic) == XFS_DIR2_DATA_MAGIC ||
        be32_to_cpu(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);



 xfs_da_log_buf(tp, bp, (uint)((char *)dup - (char *)d),
  (uint)((char *)&dup->length + sizeof(dup->length) -
         1 - (char *)d));



 xfs_da_log_buf(tp, bp,
  (uint)((char *)xfs_dir2_data_unused_tag_p(dup) - (char *)d),
  (uint)((char *)xfs_dir2_data_unused_tag_p(dup) - (char *)d +
         sizeof(xfs_dir2_data_off_t) - 1));
}
