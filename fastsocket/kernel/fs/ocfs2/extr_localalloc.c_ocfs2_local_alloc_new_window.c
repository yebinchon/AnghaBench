
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct ocfs2_super {int la_last_gd; int osb_lock; void* local_alloc_bits; TYPE_1__* local_alloc_bh; } ;
struct ocfs2_local_alloc {void* la_bm_off; int la_size; int la_bitmap; } ;
struct TYPE_5__ {void* i_total; scalar_t__ i_used; } ;
struct TYPE_6__ {TYPE_2__ bitmap1; } ;
struct ocfs2_dinode {TYPE_3__ id1; } ;
struct ocfs2_alloc_context {int ac_last_group; } ;
typedef int handle_t ;
struct TYPE_4__ {scalar_t__ b_data; } ;


 int ENOSPC ;
 scalar_t__ OCFS2_LA_DISABLED ;
 int OCFS2_LA_EVENT_FRAGMENTED ;
 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 void* cpu_to_le32 (void*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (void*) ;
 int memset (int ,int ,int ) ;
 int mlog (int ,char*,...) ;
 int mlog_entry_void () ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_claim_clusters (struct ocfs2_super*,int *,struct ocfs2_alloc_context*,void*,void**,void**) ;
 scalar_t__ ocfs2_recalc_la_window (struct ocfs2_super*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_local_alloc_new_window(struct ocfs2_super *osb,
     handle_t *handle,
     struct ocfs2_alloc_context *ac)
{
 int status = 0;
 u32 cluster_off, cluster_count;
 struct ocfs2_dinode *alloc = ((void*)0);
 struct ocfs2_local_alloc *la;

 mlog_entry_void();

 alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;
 la = OCFS2_LOCAL_ALLOC(alloc);

 if (alloc->id1.bitmap1.i_total)
  mlog(0, "asking me to alloc a new window over a non-empty "
       "one\n");

 mlog(0, "Allocating %u clusters for a new window.\n",
      osb->local_alloc_bits);




 ac->ac_last_group = osb->la_last_gd;




 status = ocfs2_claim_clusters(osb, handle, ac, osb->local_alloc_bits,
          &cluster_off, &cluster_count);
 if (status == -ENOSPC) {
retry_enospc:





  if (ocfs2_recalc_la_window(osb, OCFS2_LA_EVENT_FRAGMENTED) ==
      OCFS2_LA_DISABLED)
   goto bail;

  status = ocfs2_claim_clusters(osb, handle, ac,
           osb->local_alloc_bits,
           &cluster_off,
           &cluster_count);
  if (status == -ENOSPC)
   goto retry_enospc;





  if (status == 0) {
   spin_lock(&osb->osb_lock);
   osb->local_alloc_bits = cluster_count;
   spin_unlock(&osb->osb_lock);
  }
 }
 if (status < 0) {
  if (status != -ENOSPC)
   mlog_errno(status);
  goto bail;
 }

 osb->la_last_gd = ac->ac_last_group;

 la->la_bm_off = cpu_to_le32(cluster_off);
 alloc->id1.bitmap1.i_total = cpu_to_le32(cluster_count);




 alloc->id1.bitmap1.i_used = 0;
 memset(OCFS2_LOCAL_ALLOC(alloc)->la_bitmap, 0,
        le16_to_cpu(la->la_size));

 mlog(0, "New window allocated:\n");
 mlog(0, "window la_bm_off = %u\n",
      OCFS2_LOCAL_ALLOC(alloc)->la_bm_off);
 mlog(0, "window bits = %u\n", le32_to_cpu(alloc->id1.bitmap1.i_total));

bail:
 mlog_exit(status);
 return status;
}
