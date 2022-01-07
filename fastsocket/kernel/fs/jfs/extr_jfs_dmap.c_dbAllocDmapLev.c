
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* stree; } ;
struct dmap {int * wmap; TYPE_1__ tree; int start; } ;
struct bmap {int dummy; } ;
typedef scalar_t__ s64 ;
typedef int dmtree_t ;


 scalar_t__ BUDMIN ;
 int ENOSPC ;
 int L2BPERDMAP ;
 int L2DBWORD ;
 int LEAFIND ;
 int assert (int) ;
 int dbAllocDmap (struct bmap*,struct dmap*,scalar_t__,int) ;
 scalar_t__ dbFindBits (int ,int) ;
 scalar_t__ dbFindLeaf (int *,int,int*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int
dbAllocDmapLev(struct bmap * bmp,
        struct dmap * dp, int nblocks, int l2nb, s64 * results)
{
 s64 blkno;
 int leafidx, rc;


 assert(l2nb <= L2BPERDMAP);





 if (dbFindLeaf((dmtree_t *) & dp->tree, l2nb, &leafidx))
  return -ENOSPC;




 blkno = le64_to_cpu(dp->start) + (leafidx << L2DBWORD);





 if (dp->tree.stree[leafidx + LEAFIND] < BUDMIN)
  blkno += dbFindBits(le32_to_cpu(dp->wmap[leafidx]), l2nb);


 if ((rc = dbAllocDmap(bmp, dp, blkno, nblocks)) == 0)
  *results = blkno;

 return (rc);
}
