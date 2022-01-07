
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* xfs_extlen_t ;
typedef void* xfs_agblock_t ;
struct TYPE_2__ {int ar_blockcount; int ar_startblock; } ;
union xfs_btree_rec {TYPE_1__ alloc; } ;
struct xfs_btree_cur {int dummy; } ;


 void* be32_to_cpu (int ) ;
 int xfs_btree_get_rec (struct xfs_btree_cur*,union xfs_btree_rec**,int*) ;

int
xfs_alloc_get_rec(
 struct xfs_btree_cur *cur,
 xfs_agblock_t *bno,
 xfs_extlen_t *len,
 int *stat)
{
 union xfs_btree_rec *rec;
 int error;

 error = xfs_btree_get_rec(cur, &rec, stat);
 if (!error && *stat == 1) {
  *bno = be32_to_cpu(rec->alloc.ar_startblock);
  *len = be32_to_cpu(rec->alloc.ar_blockcount);
 }
 return error;
}
