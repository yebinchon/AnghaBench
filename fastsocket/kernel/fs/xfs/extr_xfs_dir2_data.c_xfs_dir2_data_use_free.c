
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_20__ {scalar_t__ freetag; scalar_t__ length; } ;
typedef TYPE_2__ xfs_dir2_data_unused_t ;
struct TYPE_19__ {TYPE_4__* bestfree; int magic; } ;
struct TYPE_21__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ xfs_dir2_data_t ;
struct TYPE_22__ {scalar_t__ length; scalar_t__ offset; } ;
typedef TYPE_4__ xfs_dir2_data_free_t ;
typedef int xfs_dir2_data_aoff_t ;
struct TYPE_23__ {TYPE_3__* data; } ;
typedef TYPE_5__ xfs_dabuf_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_FREE_TAG ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 int be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 TYPE_4__* xfs_dir2_data_freefind (TYPE_3__*,TYPE_2__*) ;
 TYPE_4__* xfs_dir2_data_freeinsert (TYPE_3__*,TYPE_2__*,int*) ;
 int xfs_dir2_data_freeremove (TYPE_3__*,TYPE_4__*,int*) ;
 int xfs_dir2_data_log_unused (int *,TYPE_5__*,TYPE_2__*) ;
 scalar_t__* xfs_dir2_data_unused_tag_p (TYPE_2__*) ;

void
xfs_dir2_data_use_free(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp,
 xfs_dir2_data_unused_t *dup,
 xfs_dir2_data_aoff_t offset,
 xfs_dir2_data_aoff_t len,
 int *needlogp,
 int *needscanp)
{
 xfs_dir2_data_t *d;
 xfs_dir2_data_free_t *dfp;
 int matchback;
 int matchfront;
 int needscan;
 xfs_dir2_data_unused_t *newdup;
 xfs_dir2_data_unused_t *newdup2;
 int oldlen;

 d = bp->data;
 ASSERT(be32_to_cpu(d->hdr.magic) == XFS_DIR2_DATA_MAGIC ||
        be32_to_cpu(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);
 ASSERT(be16_to_cpu(dup->freetag) == XFS_DIR2_DATA_FREE_TAG);
 ASSERT(offset >= (char *)dup - (char *)d);
 ASSERT(offset + len <= (char *)dup + be16_to_cpu(dup->length) - (char *)d);
 ASSERT((char *)dup - (char *)d == be16_to_cpu(*xfs_dir2_data_unused_tag_p(dup)));



 dfp = xfs_dir2_data_freefind(d, dup);
 oldlen = be16_to_cpu(dup->length);
 ASSERT(dfp || oldlen <= be16_to_cpu(d->hdr.bestfree[2].length));



 matchfront = (char *)dup - (char *)d == offset;
 matchback = (char *)dup + oldlen - (char *)d == offset + len;
 ASSERT(*needscanp == 0);
 needscan = 0;




 if (matchfront && matchback) {
  if (dfp) {
   needscan = (d->hdr.bestfree[2].offset != 0);
   if (!needscan)
    xfs_dir2_data_freeremove(d, dfp, needlogp);
  }
 }




 else if (matchfront) {
  newdup = (xfs_dir2_data_unused_t *)((char *)d + offset + len);
  newdup->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);
  newdup->length = cpu_to_be16(oldlen - len);
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, newdup);



  if (dfp) {
   xfs_dir2_data_freeremove(d, dfp, needlogp);
   dfp = xfs_dir2_data_freeinsert(d, newdup, needlogp);
   ASSERT(dfp != ((void*)0));
   ASSERT(dfp->length == newdup->length);
   ASSERT(be16_to_cpu(dfp->offset) == (char *)newdup - (char *)d);





   needscan = dfp == &d->hdr.bestfree[2];
  }
 }




 else if (matchback) {
  newdup = dup;
  newdup->length = cpu_to_be16(((char *)d + offset) - (char *)newdup);
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, newdup);



  if (dfp) {
   xfs_dir2_data_freeremove(d, dfp, needlogp);
   dfp = xfs_dir2_data_freeinsert(d, newdup, needlogp);
   ASSERT(dfp != ((void*)0));
   ASSERT(dfp->length == newdup->length);
   ASSERT(be16_to_cpu(dfp->offset) == (char *)newdup - (char *)d);





   needscan = dfp == &d->hdr.bestfree[2];
  }
 }




 else {
  newdup = dup;
  newdup->length = cpu_to_be16(((char *)d + offset) - (char *)newdup);
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, newdup);
  newdup2 = (xfs_dir2_data_unused_t *)((char *)d + offset + len);
  newdup2->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);
  newdup2->length = cpu_to_be16(oldlen - len - be16_to_cpu(newdup->length));
  *xfs_dir2_data_unused_tag_p(newdup2) =
   cpu_to_be16((char *)newdup2 - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, newdup2);
  if (dfp) {
   needscan = (d->hdr.bestfree[2].length != 0);
   if (!needscan) {
    xfs_dir2_data_freeremove(d, dfp, needlogp);
    (void)xfs_dir2_data_freeinsert(d, newdup,
     needlogp);
    (void)xfs_dir2_data_freeinsert(d, newdup2,
     needlogp);
   }
  }
 }
 *needscanp = needscan;
}
