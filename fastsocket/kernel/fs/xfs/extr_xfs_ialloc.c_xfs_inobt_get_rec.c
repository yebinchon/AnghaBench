
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ir_free; void* ir_freecount; void* ir_startino; } ;
typedef TYPE_2__ xfs_inobt_rec_incore_t ;
struct TYPE_4__ {int ir_free; int ir_freecount; int ir_startino; } ;
union xfs_btree_rec {TYPE_1__ inobt; } ;
struct xfs_btree_cur {int dummy; } ;


 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int xfs_btree_get_rec (struct xfs_btree_cur*,union xfs_btree_rec**,int*) ;

int
xfs_inobt_get_rec(
 struct xfs_btree_cur *cur,
 xfs_inobt_rec_incore_t *irec,
 int *stat)
{
 union xfs_btree_rec *rec;
 int error;

 error = xfs_btree_get_rec(cur, &rec, stat);
 if (!error && *stat == 1) {
  irec->ir_startino = be32_to_cpu(rec->inobt.ir_startino);
  irec->ir_freecount = be32_to_cpu(rec->inobt.ir_freecount);
  irec->ir_free = be64_to_cpu(rec->inobt.ir_free);
 }
 return error;
}
