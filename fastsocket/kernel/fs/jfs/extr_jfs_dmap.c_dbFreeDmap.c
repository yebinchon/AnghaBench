
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* stree; } ;
struct dmap {TYPE_1__ tree; } ;
struct bmap {int dummy; } ;
typedef scalar_t__ s8 ;
typedef int s64 ;
typedef int dmtree_t ;


 int BPERDMAP ;
 int L2DBWORD ;
 scalar_t__ NOFREE ;
 size_t ROOT ;
 int dbAdjCtl (struct bmap*,int,scalar_t__,int ,int ) ;
 int dbAllocBits (struct bmap*,struct dmap*,int,int) ;
 int dbBackSplit (int *,int) ;
 int dbFreeBits (struct bmap*,struct dmap*,int,int) ;

__attribute__((used)) static int dbFreeDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
        int nblocks)
{
 s8 oldroot;
 int rc = 0, word;




 oldroot = dp->tree.stree[ROOT];


 rc = dbFreeBits(bmp, dp, blkno, nblocks);


 if (rc || (dp->tree.stree[ROOT] == oldroot))
  return (rc);





 if ((rc = dbAdjCtl(bmp, blkno, dp->tree.stree[ROOT], 0, 0))) {
  word = (blkno & (BPERDMAP - 1)) >> L2DBWORD;






  if (dp->tree.stree[word] == NOFREE)
   dbBackSplit((dmtree_t *) & dp->tree, word);

  dbAllocBits(bmp, dp, blkno, nblocks);
 }

 return (rc);
}
