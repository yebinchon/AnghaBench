
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
struct TYPE_23__ {scalar_t__ index; scalar_t__ hashval; int namelen; int dp; int trans; scalar_t__ valuelen; scalar_t__ rmtblkno; int name; int blkno; } ;
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
 scalar_t__ memcmp (char*,int ,int) ;
 int trace_xfs_attr_leaf_clearflag (TYPE_4__*) ;
 TYPE_7__* xfs_attr_leaf_name_local (TYPE_5__*,size_t) ;
 TYPE_6__* xfs_attr_leaf_name_remote (TYPE_5__*,size_t) ;
 int xfs_da_buf_done (TYPE_3__*) ;
 int xfs_da_log_buf (int ,TYPE_3__*,int ) ;
 int xfs_da_read_buf (int ,int ,int ,int,TYPE_3__**,int ) ;
 int xfs_trans_roll (int *,int ) ;

int
xfs_attr_leaf_clearflag(xfs_da_args_t *args)
{
 xfs_attr_leafblock_t *leaf;
 xfs_attr_leaf_entry_t *entry;
 xfs_attr_leaf_name_remote_t *name_rmt;
 xfs_dabuf_t *bp;
 int error;






 trace_xfs_attr_leaf_clearflag(args);



 error = xfs_da_read_buf(args->trans, args->dp, args->blkno, -1, &bp,
          XFS_ATTR_FORK);
 if (error) {
  return(error);
 }
 ASSERT(bp != ((void*)0));

 leaf = bp->data;
 ASSERT(be16_to_cpu(leaf->hdr.info.magic) == XFS_ATTR_LEAF_MAGIC);
 ASSERT(args->index < be16_to_cpu(leaf->hdr.count));
 ASSERT(args->index >= 0);
 entry = &leaf->entries[ args->index ];
 ASSERT(entry->flags & XFS_ATTR_INCOMPLETE);
 entry->flags &= ~XFS_ATTR_INCOMPLETE;
 xfs_da_log_buf(args->trans, bp,
    XFS_DA_LOGRANGE(leaf, entry, sizeof(*entry)));

 if (args->rmtblkno) {
  ASSERT((entry->flags & XFS_ATTR_LOCAL) == 0);
  name_rmt = xfs_attr_leaf_name_remote(leaf, args->index);
  name_rmt->valueblk = cpu_to_be32(args->rmtblkno);
  name_rmt->valuelen = cpu_to_be32(args->valuelen);
  xfs_da_log_buf(args->trans, bp,
    XFS_DA_LOGRANGE(leaf, name_rmt, sizeof(*name_rmt)));
 }
 xfs_da_buf_done(bp);




 return xfs_trans_roll(&args->trans, args->dp);
}
