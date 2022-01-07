
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct dmapctl {int budmin; scalar_t__ leafidx; } ;
struct bmap {TYPE_1__* db_ipbmap; int db_l2nbperpage; } ;
typedef int s64 ;
typedef int dmtree_t ;
struct TYPE_2__ {int i_sb; } ;


 int BLKTOCTL (int,int ,int) ;
 int CTLLEAFIND ;
 int EIO ;
 int ENOSPC ;
 int PSIZE ;
 scalar_t__ cpu_to_le32 (int ) ;
 int dbFindLeaf (int *,int,int*) ;
 int jfs_error (int ,char*) ;
 struct metapage* read_metapage (TYPE_1__*,int,int ,int ) ;
 int release_metapage (struct metapage*) ;

__attribute__((used)) static int dbFindCtl(struct bmap * bmp, int l2nb, int level, s64 * blkno)
{
 int rc, leafidx, lev;
 s64 b, lblkno;
 struct dmapctl *dcp;
 int budmin;
 struct metapage *mp;






 for (lev = level, b = *blkno; lev >= 0; lev--) {



  lblkno = BLKTOCTL(b, bmp->db_l2nbperpage, lev);
  mp = read_metapage(bmp->db_ipbmap, lblkno, PSIZE, 0);
  if (mp == ((void*)0))
   return -EIO;
  dcp = (struct dmapctl *) mp->data;
  budmin = dcp->budmin;

  if (dcp->leafidx != cpu_to_le32(CTLLEAFIND)) {
   jfs_error(bmp->db_ipbmap->i_sb,
      "dbFindCtl: Corrupt dmapctl page");
   release_metapage(mp);
   return -EIO;
  }






  rc = dbFindLeaf((dmtree_t *) dcp, l2nb, &leafidx);



  release_metapage(mp);



  if (rc) {
   if (lev != level) {
    jfs_error(bmp->db_ipbmap->i_sb,
       "dbFindCtl: dmap inconsistent");
    return -EIO;
   }
   return -ENOSPC;
  }





  b += (((s64) leafidx) << budmin);






  if (l2nb >= budmin)
   break;
 }

 *blkno = b;
 return (0);
}
