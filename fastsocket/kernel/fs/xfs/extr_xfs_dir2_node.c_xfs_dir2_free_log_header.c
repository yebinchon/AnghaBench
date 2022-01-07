
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
typedef TYPE_2__ xfs_dir2_free_t ;
typedef int xfs_dir2_free_hdr_t ;
struct TYPE_8__ {TYPE_2__* data; } ;
typedef TYPE_3__ xfs_dabuf_t ;
typedef int uint ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_FREE_MAGIC ;
 scalar_t__ be32_to_cpu (int ) ;
 int xfs_da_log_buf (int *,TYPE_3__*,int ,int ) ;

__attribute__((used)) static void
xfs_dir2_free_log_header(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp)
{
 xfs_dir2_free_t *free;

 free = bp->data;
 ASSERT(be32_to_cpu(free->hdr.magic) == XFS_DIR2_FREE_MAGIC);
 xfs_da_log_buf(tp, bp, (uint)((char *)&free->hdr - (char *)free),
  (uint)(sizeof(xfs_dir2_free_hdr_t) - 1));
}
