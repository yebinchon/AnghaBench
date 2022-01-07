
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct list_head {int dummy; } ;
struct pnfs_commit_bucket {int wlseg; struct list_head written; } ;
struct nfs_page {int wb_flags; } ;
struct nfs_commit_info {TYPE_2__* ds; TYPE_1__* mds; } ;
struct nfs4_filelayout_segment {scalar_t__ commit_through_mds; } ;
struct TYPE_4__ {int nwritten; struct pnfs_commit_bucket* buckets; } ;
struct TYPE_3__ {struct list_head list; } ;


 struct nfs4_filelayout_segment* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;
 int PG_COMMIT_TO_DS ;
 int get_lseg (struct pnfs_layout_segment*) ;
 scalar_t__ list_empty (struct list_head*) ;
 size_t nfs4_fl_calc_j_index (struct pnfs_layout_segment*,int ) ;
 int req_offset (struct nfs_page*) ;
 size_t select_bucket_index (struct nfs4_filelayout_segment*,size_t) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static struct list_head *
filelayout_choose_commit_list(struct nfs_page *req,
         struct pnfs_layout_segment *lseg,
         struct nfs_commit_info *cinfo)
{
 struct nfs4_filelayout_segment *fl = FILELAYOUT_LSEG(lseg);
 u32 i, j;
 struct list_head *list;
 struct pnfs_commit_bucket *buckets;

 if (fl->commit_through_mds)
  return &cinfo->mds->list;







 j = nfs4_fl_calc_j_index(lseg, req_offset(req));
 i = select_bucket_index(fl, j);
 buckets = cinfo->ds->buckets;
 list = &buckets[i].written;
 if (list_empty(list)) {






  buckets[i].wlseg = get_lseg(lseg);
 }
 set_bit(PG_COMMIT_TO_DS, &req->wb_flags);
 cinfo->ds->nwritten++;
 return list;
}
