
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct dmapctl {scalar_t__ leafidx; int* stree; int budmin; } ;
struct bmap {int db_maxlevel; scalar_t__ db_maxfreebud; TYPE_1__* db_ipbmap; int db_l2nbperpage; } ;
typedef scalar_t__ s8 ;
typedef int s64 ;
typedef int dmtree_t ;
struct TYPE_2__ {int i_sb; } ;


 int BLKTOCTL (int ,int ,int) ;
 int BLKTOCTLLEAF (int ,int ) ;
 int CTLLEAFIND ;
 int EIO ;
 int NOFREE ;
 int PSIZE ;
 size_t ROOT ;
 int assert (int) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dbBackSplit (int *,int) ;
 int dbJoin (int *,int,int) ;
 int dbSplit (int *,int,int ,int) ;
 int jfs_error (int ,char*) ;
 int le32_to_cpu (scalar_t__) ;
 struct metapage* read_metapage (TYPE_1__*,int ,int ,int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static int
dbAdjCtl(struct bmap * bmp, s64 blkno, int newval, int alloc, int level)
{
 struct metapage *mp;
 s8 oldroot;
 int oldval;
 s64 lblkno;
 struct dmapctl *dcp;
 int rc, leafno, ti;




 lblkno = BLKTOCTL(blkno, bmp->db_l2nbperpage, level);
 mp = read_metapage(bmp->db_ipbmap, lblkno, PSIZE, 0);
 if (mp == ((void*)0))
  return -EIO;
 dcp = (struct dmapctl *) mp->data;

 if (dcp->leafidx != cpu_to_le32(CTLLEAFIND)) {
  jfs_error(bmp->db_ipbmap->i_sb,
     "dbAdjCtl: Corrupt dmapctl page");
  release_metapage(mp);
  return -EIO;
 }




 leafno = BLKTOCTLLEAF(blkno, dcp->budmin);
 ti = leafno + le32_to_cpu(dcp->leafidx);




 oldval = dcp->stree[ti];
 oldroot = dcp->stree[ROOT];
 if (alloc) {
  if (oldval == NOFREE) {
   rc = dbBackSplit((dmtree_t *) dcp, leafno);
   if (rc)
    return rc;
   oldval = dcp->stree[ti];
  }
  dbSplit((dmtree_t *) dcp, leafno, dcp->budmin, newval);
 } else {
  rc = dbJoin((dmtree_t *) dcp, leafno, newval);
  if (rc)
   return rc;
 }
 if (dcp->stree[ROOT] != oldroot) {



  if (level < bmp->db_maxlevel) {



   if ((rc =
        dbAdjCtl(bmp, blkno, dcp->stree[ROOT], alloc,
          level + 1))) {




    if (alloc) {
     dbJoin((dmtree_t *) dcp, leafno,
            oldval);
    } else {






     if (dcp->stree[ti] == NOFREE)
      dbBackSplit((dmtree_t *)
           dcp, leafno);
     dbSplit((dmtree_t *) dcp, leafno,
      dcp->budmin, oldval);
    }



    release_metapage(mp);
    return (rc);
   }
  } else {




   assert(level == bmp->db_maxlevel);
   if (bmp->db_maxfreebud != oldroot) {
    jfs_error(bmp->db_ipbmap->i_sb,
       "dbAdjCtl: the maximum free buddy is "
       "not the old root");
   }
   bmp->db_maxfreebud = dcp->stree[ROOT];
  }
 }



 write_metapage(mp);

 return (0);
}
