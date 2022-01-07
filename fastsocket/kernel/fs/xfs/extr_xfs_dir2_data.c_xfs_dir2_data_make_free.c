
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {TYPE_3__* t_mountp; } ;
typedef TYPE_2__ xfs_trans_t ;
struct TYPE_25__ {int m_dirblksize; } ;
typedef TYPE_3__ xfs_mount_t ;
struct TYPE_26__ {scalar_t__ freetag; scalar_t__ length; } ;
typedef TYPE_4__ xfs_dir2_data_unused_t ;
struct TYPE_23__ {TYPE_6__* bestfree; int magic; } ;
struct TYPE_27__ {TYPE_1__ hdr; } ;
typedef TYPE_5__ xfs_dir2_data_t ;
struct TYPE_28__ {scalar_t__ length; } ;
typedef TYPE_6__ xfs_dir2_data_free_t ;
typedef int xfs_dir2_data_aoff_t ;
typedef int xfs_dir2_block_tail_t ;
typedef int xfs_dir2_block_t ;
struct TYPE_29__ {TYPE_5__* data; } ;
typedef TYPE_7__ xfs_dabuf_t ;
typedef scalar_t__ __be16 ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 int XFS_DIR2_DATA_FREE_TAG ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 int be16_add_cpu (scalar_t__*,int) ;
 int be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 scalar_t__ xfs_dir2_block_leaf_p (int *) ;
 int * xfs_dir2_block_tail_p (TYPE_3__*,int *) ;
 TYPE_6__* xfs_dir2_data_freefind (TYPE_5__*,TYPE_4__*) ;
 TYPE_6__* xfs_dir2_data_freeinsert (TYPE_5__*,TYPE_4__*,int*) ;
 int xfs_dir2_data_freeremove (TYPE_5__*,TYPE_6__*,int*) ;
 int xfs_dir2_data_log_unused (TYPE_2__*,TYPE_7__*,TYPE_4__*) ;
 void** xfs_dir2_data_unused_tag_p (TYPE_4__*) ;

void
xfs_dir2_data_make_free(
 xfs_trans_t *tp,
 xfs_dabuf_t *bp,
 xfs_dir2_data_aoff_t offset,
 xfs_dir2_data_aoff_t len,
 int *needlogp,
 int *needscanp)
{
 xfs_dir2_data_t *d;
 xfs_dir2_data_free_t *dfp;
 char *endptr;
 xfs_mount_t *mp;
 int needscan;
 xfs_dir2_data_unused_t *newdup;
 xfs_dir2_data_unused_t *postdup;
 xfs_dir2_data_unused_t *prevdup;

 mp = tp->t_mountp;
 d = bp->data;



 if (be32_to_cpu(d->hdr.magic) == XFS_DIR2_DATA_MAGIC)
  endptr = (char *)d + mp->m_dirblksize;
 else {
  xfs_dir2_block_tail_t *btp;

  ASSERT(be32_to_cpu(d->hdr.magic) == XFS_DIR2_BLOCK_MAGIC);
  btp = xfs_dir2_block_tail_p(mp, (xfs_dir2_block_t *)d);
  endptr = (char *)xfs_dir2_block_leaf_p(btp);
 }




 if (offset > sizeof(d->hdr)) {
  __be16 *tagp;

  tagp = (__be16 *)((char *)d + offset) - 1;
  prevdup = (xfs_dir2_data_unused_t *)((char *)d + be16_to_cpu(*tagp));
  if (be16_to_cpu(prevdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
   prevdup = ((void*)0);
 } else
  prevdup = ((void*)0);




 if ((char *)d + offset + len < endptr) {
  postdup =
   (xfs_dir2_data_unused_t *)((char *)d + offset + len);
  if (be16_to_cpu(postdup->freetag) != XFS_DIR2_DATA_FREE_TAG)
   postdup = ((void*)0);
 } else
  postdup = ((void*)0);
 ASSERT(*needscanp == 0);
 needscan = 0;




 if (prevdup && postdup) {
  xfs_dir2_data_free_t *dfp2;




  dfp = xfs_dir2_data_freefind(d, prevdup);
  dfp2 = xfs_dir2_data_freefind(d, postdup);






  needscan = (d->hdr.bestfree[2].length != 0);



  be16_add_cpu(&prevdup->length, len + be16_to_cpu(postdup->length));
  *xfs_dir2_data_unused_tag_p(prevdup) =
   cpu_to_be16((char *)prevdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, prevdup);
  if (!needscan) {






   ASSERT(dfp && dfp2);
   if (dfp == &d->hdr.bestfree[1]) {
    dfp = &d->hdr.bestfree[0];
    ASSERT(dfp2 == dfp);
    dfp2 = &d->hdr.bestfree[1];
   }
   xfs_dir2_data_freeremove(d, dfp2, needlogp);
   xfs_dir2_data_freeremove(d, dfp, needlogp);



   dfp = xfs_dir2_data_freeinsert(d, prevdup, needlogp);
   ASSERT(dfp == &d->hdr.bestfree[0]);
   ASSERT(dfp->length == prevdup->length);
   ASSERT(!dfp[1].length);
   ASSERT(!dfp[2].length);
  }
 }



 else if (prevdup) {
  dfp = xfs_dir2_data_freefind(d, prevdup);
  be16_add_cpu(&prevdup->length, len);
  *xfs_dir2_data_unused_tag_p(prevdup) =
   cpu_to_be16((char *)prevdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, prevdup);





  if (dfp) {
   xfs_dir2_data_freeremove(d, dfp, needlogp);
   (void)xfs_dir2_data_freeinsert(d, prevdup, needlogp);
  }



  else {
   needscan = be16_to_cpu(prevdup->length) >
       be16_to_cpu(d->hdr.bestfree[2].length);
  }
 }



 else if (postdup) {
  dfp = xfs_dir2_data_freefind(d, postdup);
  newdup = (xfs_dir2_data_unused_t *)((char *)d + offset);
  newdup->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);
  newdup->length = cpu_to_be16(len + be16_to_cpu(postdup->length));
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, newdup);





  if (dfp) {
   xfs_dir2_data_freeremove(d, dfp, needlogp);
   (void)xfs_dir2_data_freeinsert(d, newdup, needlogp);
  }



  else {
   needscan = be16_to_cpu(newdup->length) >
       be16_to_cpu(d->hdr.bestfree[2].length);
  }
 }



 else {
  newdup = (xfs_dir2_data_unused_t *)((char *)d + offset);
  newdup->freetag = cpu_to_be16(XFS_DIR2_DATA_FREE_TAG);
  newdup->length = cpu_to_be16(len);
  *xfs_dir2_data_unused_tag_p(newdup) =
   cpu_to_be16((char *)newdup - (char *)d);
  xfs_dir2_data_log_unused(tp, bp, newdup);
  (void)xfs_dir2_data_freeinsert(d, newdup, needlogp);
 }
 *needscanp = needscan;
}
