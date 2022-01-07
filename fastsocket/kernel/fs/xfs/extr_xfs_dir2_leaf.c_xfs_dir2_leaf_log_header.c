
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_7__ {int magic; } ;
struct TYPE_8__ {TYPE_1__ info; } ;
struct TYPE_9__ {TYPE_2__ hdr; } ;
typedef TYPE_3__ xfs_dir2_leaf_t ;
struct TYPE_10__ {TYPE_3__* data; } ;
typedef TYPE_4__ xfs_dabuf_t ;
typedef int uint ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 scalar_t__ be16_to_cpu (int ) ;
 int xfs_da_log_buf (int *,TYPE_4__*,int ,int ) ;

void
xfs_dir2_leaf_log_header(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp)
{
 xfs_dir2_leaf_t *leaf;

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_DIR2_LEAF1_MAGIC ||
        be16_to_cpu(leaf->hdr.info.magic) == XFS_DIR2_LEAFN_MAGIC);
 xfs_da_log_buf(tp, bp, (uint)((char *)&leaf->hdr - (char *)leaf),
  (uint)(sizeof(leaf->hdr) - 1));
}
