
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {TYPE_5__* data; } ;
typedef TYPE_3__ xfs_dabuf_t ;
struct TYPE_23__ {scalar_t__ blkno; scalar_t__ blkno2; scalar_t__ index; scalar_t__ index2; int dp; int trans; scalar_t__ valuelen; scalar_t__ rmtblkno; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct TYPE_20__ {int magic; } ;
struct TYPE_21__ {int count; TYPE_1__ info; } ;
struct TYPE_24__ {TYPE_6__* entries; TYPE_2__ hdr; } ;
typedef TYPE_5__ xfs_attr_leafblock_t ;
struct TYPE_25__ {int flags; int namelen; void* valuelen; void* valueblk; int hashval; scalar_t__ name; } ;
typedef TYPE_6__ xfs_attr_leaf_name_remote_t ;
struct TYPE_26__ {int namelen; scalar_t__ nameval; } ;
typedef TYPE_7__ xfs_attr_leaf_name_local_t ;
typedef TYPE_6__ xfs_attr_leaf_entry_t ;


 int ASSERT (int) ;
 int XFS_ATTR_FORK ;
 int XFS_ATTR_INCOMPLETE ;
 scalar_t__ XFS_ATTR_LEAF_MAGIC ;
 int XFS_ATTR_LOCAL ;
 int XFS_DA_LOGRANGE (TYPE_5__*,TYPE_6__*,int) ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 void* cpu_to_be32 (scalar_t__) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int trace_xfs_attr_leaf_flipflags (TYPE_4__*) ;
 TYPE_7__* xfs_attr_leaf_name_local (TYPE_5__*,size_t) ;
 TYPE_6__* xfs_attr_leaf_name_remote (TYPE_5__*,size_t) ;
 int xfs_da_buf_done (TYPE_3__*) ;
 int xfs_da_log_buf (int ,TYPE_3__*,int ) ;
 int xfs_da_read_buf (int ,int ,scalar_t__,int,TYPE_3__**,int ) ;
 int xfs_trans_roll (int *,int ) ;

int
xfs_attr_leaf_flipflags(xfs_da_args_t *args)
{
 xfs_attr_leafblock_t *leaf1, *leaf2;
 xfs_attr_leaf_entry_t *entry1, *entry2;
 xfs_attr_leaf_name_remote_t *name_rmt;
 xfs_dabuf_t *bp1, *bp2;
 int error;






 trace_xfs_attr_leaf_flipflags(args);




 error = xfs_da_read_buf(args->trans, args->dp, args->blkno, -1, &bp1,
          XFS_ATTR_FORK);
 if (error) {
  return(error);
 }
 ASSERT(bp1 != ((void*)0));




 if (args->blkno2 != args->blkno) {
  error = xfs_da_read_buf(args->trans, args->dp, args->blkno2,
     -1, &bp2, XFS_ATTR_FORK);
  if (error) {
   return(error);
  }
  ASSERT(bp2 != ((void*)0));
 } else {
  bp2 = bp1;
 }

 leaf1 = bp1->data;
 ASSERT(be16_to_cpu(leaf1->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 ASSERT(args->index < be16_to_cpu(leaf1->hdr.count));
 ASSERT(args->index >= 0);
 entry1 = &leaf1->entries[ args->index ];

 leaf2 = bp2->data;
 ASSERT(be16_to_cpu(leaf2->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 ASSERT(args->index2 < be16_to_cpu(leaf2->hdr.count));
 ASSERT(args->index2 >= 0);
 entry2 = &leaf2->entries[ args->index2 ];
 ASSERT(entry1->flags & XFS_ATTR_INCOMPLETE);
 ASSERT((entry2->flags & XFS_ATTR_INCOMPLETE) == 0);

 entry1->flags &= ~XFS_ATTR_INCOMPLETE;
 xfs_da_log_buf(args->trans, bp1,
     XFS_DA_LOGRANGE(leaf1, entry1, sizeof(*entry1)));
 if (args->rmtblkno) {
  ASSERT((entry1->flags & XFS_ATTR_LOCAL) == 0);
  name_rmt = xfs_attr_leaf_name_remote(leaf1, args->index);
  name_rmt->valueblk = cpu_to_be32(args->rmtblkno);
  name_rmt->valuelen = cpu_to_be32(args->valuelen);
  xfs_da_log_buf(args->trans, bp1,
    XFS_DA_LOGRANGE(leaf1, name_rmt, sizeof(*name_rmt)));
 }

 entry2->flags |= XFS_ATTR_INCOMPLETE;
 xfs_da_log_buf(args->trans, bp2,
     XFS_DA_LOGRANGE(leaf2, entry2, sizeof(*entry2)));
 if ((entry2->flags & XFS_ATTR_LOCAL) == 0) {
  name_rmt = xfs_attr_leaf_name_remote(leaf2, args->index2);
  name_rmt->valueblk = 0;
  name_rmt->valuelen = 0;
  xfs_da_log_buf(args->trans, bp2,
    XFS_DA_LOGRANGE(leaf2, name_rmt, sizeof(*name_rmt)));
 }
 xfs_da_buf_done(bp1);
 if (bp1 != bp2)
  xfs_da_buf_done(bp2);




 error = xfs_trans_roll(&args->trans, args->dp);

 return(error);
}
