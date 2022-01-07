
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_22__ {int m_dirblksize; } ;
typedef TYPE_4__ xfs_mount_t ;
struct TYPE_23__ {TYPE_4__* i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
typedef int xfs_dir2_db_t ;
struct TYPE_24__ {void* length; void* freetag; } ;
typedef TYPE_6__ xfs_dir2_data_unused_t ;
struct TYPE_21__ {TYPE_2__* bestfree; int magic; } ;
struct TYPE_25__ {TYPE_3__ hdr; TYPE_1__* u; } ;
typedef TYPE_7__ xfs_dir2_data_t ;
struct TYPE_26__ {TYPE_7__* data; } ;
typedef TYPE_8__ xfs_dabuf_t ;
struct TYPE_27__ {int * trans; TYPE_5__* dp; } ;
typedef TYPE_9__ xfs_da_args_t ;
typedef int uint ;
struct TYPE_20__ {void* length; void* offset; } ;
struct TYPE_19__ {TYPE_6__ unused; } ;


 int ASSERT (int ) ;
 int XFS_DATA_FORK ;
 int XFS_DIR2_DATA_FD_COUNT ;
 int XFS_DIR2_DATA_FREE_TAG ;
 int XFS_DIR2_DATA_MAGIC ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int xfs_da_get_buf (int *,TYPE_5__*,int ,int,TYPE_8__**,int ) ;
 int xfs_dir2_data_log_header (int *,TYPE_8__*) ;
 int xfs_dir2_data_log_unused (int *,TYPE_8__*,TYPE_6__*) ;
 void** xfs_dir2_data_unused_tag_p (TYPE_6__*) ;
 int xfs_dir2_db_to_da (TYPE_4__*,int ) ;

int
xfs_dir2_data_init(
 xfs_da_args_t *args,
 xfs_dir2_db_t blkno,
 xfs_dabuf_t **bpp)
{
 xfs_dabuf_t *bp;
 xfs_dir2_data_t *d;
 xfs_inode_t *dp;
 xfs_dir2_data_unused_t *dup;
 int error;
 int i;
 xfs_mount_t *mp;
 xfs_trans_t *tp;
 int t;

 dp = args->dp;
 mp = dp->i_mount;
 tp = args->trans;



 error = xfs_da_get_buf(tp, dp, xfs_dir2_db_to_da(mp, blkno), -1, &bp,
  XFS_DATA_FORK);
 if (error) {
  return error;
 }
 ASSERT(bp != ((void*)0));



 d = bp->data;
 d->hdr.magic = cpu_to_be32(XFS_DIR2_DATA_MAGIC);
 d->hdr.bestfree[0].offset = cpu_to_be16(sizeof(d->hdr));
 for (i = 1; i < XFS_DIR2_DATA_FD_COUNT; i++) {
  d->hdr.bestfree[i].length = 0;
  d->hdr.bestfree[i].offset = 0;
 }



 dup = &d->u[0].unused;
 dup->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);

 t=mp->m_dirblksize - (uint)sizeof(d->hdr);
 d->hdr.bestfree[0].length = cpu_to_be16(t);
 dup->length = cpu_to_be16(t);
 *xfs_dir2_data_unused_tag_p(dup) = cpu_to_be16((char *)dup - (char *)d);



 xfs_dir2_data_log_header(tp, bp);
 xfs_dir2_data_log_unused(tp, bp, dup);
 *bpp = bp;
 return 0;
}
