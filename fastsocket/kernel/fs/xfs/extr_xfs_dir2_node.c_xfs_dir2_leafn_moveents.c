
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


typedef int xfs_trans_t ;
struct TYPE_17__ {int count; int stale; } ;
struct TYPE_18__ {TYPE_1__ hdr; TYPE_12__* ents; } ;
typedef TYPE_2__ xfs_dir2_leaf_t ;
typedef int xfs_dir2_leaf_entry_t ;
struct TYPE_19__ {TYPE_2__* data; } ;
typedef TYPE_3__ xfs_dabuf_t ;
struct TYPE_20__ {int dp; int * trans; } ;
typedef TYPE_4__ xfs_da_args_t ;
struct TYPE_16__ {int address; } ;


 scalar_t__ XFS_DIR2_NULL_DATAPTR ;
 int be16_add_cpu (int*,int) ;
 int be16_to_cpu (int) ;
 scalar_t__ be32_to_cpu (int ) ;
 int memcpy (TYPE_12__*,TYPE_12__*,int) ;
 int memmove (TYPE_12__*,TYPE_12__*,int) ;
 int trace_xfs_dir2_leafn_moveents (TYPE_4__*,int,int,int) ;
 int xfs_dir2_leaf_log_ents (int *,TYPE_3__*,int,int) ;
 int xfs_dir2_leaf_log_header (int *,TYPE_3__*) ;
 int xfs_dir2_leafn_check (int ,TYPE_3__*) ;

__attribute__((used)) static void
xfs_dir2_leafn_moveents(
 xfs_da_args_t *args,
 xfs_dabuf_t *bp_s,
 int start_s,
 xfs_dabuf_t *bp_d,
 int start_d,
 int count)
{
 xfs_dir2_leaf_t *leaf_d;
 xfs_dir2_leaf_t *leaf_s;
 int stale;
 xfs_trans_t *tp;

 trace_xfs_dir2_leafn_moveents(args, start_s, start_d, count);




 if (count == 0) {
  return;
 }
 tp = args->trans;
 leaf_s = bp_s->data;
 leaf_d = bp_d->data;





 if (start_d < be16_to_cpu(leaf_d->hdr.count)) {
  memmove(&leaf_d->ents[start_d + count], &leaf_d->ents[start_d],
   (be16_to_cpu(leaf_d->hdr.count) - start_d) *
   sizeof(xfs_dir2_leaf_entry_t));
  xfs_dir2_leaf_log_ents(tp, bp_d, start_d + count,
   count + be16_to_cpu(leaf_d->hdr.count) - 1);
 }




 if (leaf_s->hdr.stale) {
  int i;

  for (i = start_s, stale = 0; i < start_s + count; i++) {
   if (be32_to_cpu(leaf_s->ents[i].address) == XFS_DIR2_NULL_DATAPTR)
    stale++;
  }
 } else
  stale = 0;



 memcpy(&leaf_d->ents[start_d], &leaf_s->ents[start_s],
  count * sizeof(xfs_dir2_leaf_entry_t));
 xfs_dir2_leaf_log_ents(tp, bp_d, start_d, start_d + count - 1);




 if (start_s + count < be16_to_cpu(leaf_s->hdr.count)) {
  memmove(&leaf_s->ents[start_s], &leaf_s->ents[start_s + count],
   count * sizeof(xfs_dir2_leaf_entry_t));
  xfs_dir2_leaf_log_ents(tp, bp_s, start_s, start_s + count - 1);
 }



 be16_add_cpu(&leaf_s->hdr.count, -(count));
 be16_add_cpu(&leaf_s->hdr.stale, -(stale));
 be16_add_cpu(&leaf_d->hdr.count, count);
 be16_add_cpu(&leaf_d->hdr.stale, stale);
 xfs_dir2_leaf_log_header(tp, bp_s);
 xfs_dir2_leaf_log_header(tp, bp_d);
 xfs_dir2_leafn_check(args->dp, bp_s);
 xfs_dir2_leafn_check(args->dp, bp_d);
}
