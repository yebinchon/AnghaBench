
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct pnfs_commit_bucket {int committing; int written; } ;
struct nfs_commit_info {int lock; TYPE_2__* ds; } ;
struct nfs4_filelayout_segment {scalar_t__ stripe_type; TYPE_1__* dsaddr; scalar_t__ commit_through_mds; } ;
typedef int gfp_t ;
struct TYPE_4__ {int nbuckets; struct pnfs_commit_bucket* buckets; } ;
struct TYPE_3__ {int ds_num; int stripe_count; } ;


 int ENOMEM ;
 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ STRIPE_SPARSE ;
 struct pnfs_commit_bucket* kcalloc (int,int,int ) ;
 int kfree (struct pnfs_commit_bucket*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static int
filelayout_alloc_commit_info(struct pnfs_layout_segment *lseg,
        struct nfs_commit_info *cinfo,
        gfp_t gfp_flags)
{
 struct nfs4_filelayout_segment *fl = FILELAYOUT_LSEG(lseg);
 struct pnfs_commit_bucket *buckets;
 int size;

 if (fl->commit_through_mds)
  return 0;
 if (cinfo->ds->nbuckets != 0) {






  return 0;
 }

 size = (fl->stripe_type == STRIPE_SPARSE) ?
  fl->dsaddr->ds_num : fl->dsaddr->stripe_count;

 buckets = kcalloc(size, sizeof(struct pnfs_commit_bucket),
     gfp_flags);
 if (!buckets)
  return -ENOMEM;
 else {
  int i;

  spin_lock(cinfo->lock);
  if (cinfo->ds->nbuckets != 0)
   kfree(buckets);
  else {
   cinfo->ds->buckets = buckets;
   cinfo->ds->nbuckets = size;
   for (i = 0; i < size; i++) {
    INIT_LIST_HEAD(&buckets[i].written);
    INIT_LIST_HEAD(&buckets[i].committing);
   }
  }
  spin_unlock(cinfo->lock);
  return 0;
 }
}
