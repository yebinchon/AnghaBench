
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int xfs_lookup_t ;
typedef int xfs_agino_t ;
struct TYPE_3__ {scalar_t__ ir_free; scalar_t__ ir_freecount; int ir_startino; } ;
struct TYPE_4__ {TYPE_1__ i; } ;
struct xfs_btree_cur {TYPE_2__ bc_rec; } ;


 int xfs_btree_lookup (struct xfs_btree_cur*,int ,int*) ;

int
xfs_inobt_lookup(
 struct xfs_btree_cur *cur,
 xfs_agino_t ino,
 xfs_lookup_t dir,
 int *stat)
{
 cur->bc_rec.i.ir_startino = ino;
 cur->bc_rec.i.ir_freecount = 0;
 cur->bc_rec.i.ir_free = 0;
 return xfs_btree_lookup(cur, dir, stat);
}
