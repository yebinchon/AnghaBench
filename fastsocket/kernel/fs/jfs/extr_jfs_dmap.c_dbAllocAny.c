
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bmap {TYPE_1__* db_ipbmap; int db_maxlevel; } ;
typedef int s64 ;
struct TYPE_2__ {int i_sb; } ;


 int EIO ;
 int ENOSPC ;
 int dbAllocCtl (struct bmap*,int ,int,int ,int *) ;
 int dbFindCtl (struct bmap*,int,int ,int *) ;
 int jfs_error (int ,char*) ;

__attribute__((used)) static int dbAllocAny(struct bmap * bmp, s64 nblocks, int l2nb, s64 * results)
{
 int rc;
 s64 blkno = 0;







 if ((rc = dbFindCtl(bmp, l2nb, bmp->db_maxlevel, &blkno)))
  return (rc);



 rc = dbAllocCtl(bmp, nblocks, l2nb, blkno, results);
 if (rc == -ENOSPC) {
  jfs_error(bmp->db_ipbmap->i_sb,
     "dbAllocAny: unable to allocate blocks");
  return -EIO;
 }
 return (rc);
}
