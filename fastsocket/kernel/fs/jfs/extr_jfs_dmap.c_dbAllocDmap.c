
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


 size_t ROOT ;
 int dbAdjCtl (struct bmap*,int ,scalar_t__,int,int ) ;
 int dbAllocBits (struct bmap*,struct dmap*,int ,int) ;
 int dbFreeBits (struct bmap*,struct dmap*,int ,int) ;

__attribute__((used)) static int dbAllocDmap(struct bmap * bmp, struct dmap * dp, s64 blkno,
         int nblocks)
{
 s8 oldroot;
 int rc;




 oldroot = dp->tree.stree[ROOT];


 dbAllocBits(bmp, dp, blkno, nblocks);


 if (dp->tree.stree[ROOT] == oldroot)
  return (0);





 if ((rc = dbAdjCtl(bmp, blkno, dp->tree.stree[ROOT], 1, 0)))
  dbFreeBits(bmp, dp, blkno, nblocks);

 return (rc);
}
