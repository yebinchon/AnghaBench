
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct TYPE_3__ {int* stree; } ;
struct dmap {TYPE_1__ tree; } ;
struct bmap {TYPE_2__* db_ipbmap; int db_l2nbperpage; } ;
typedef int s64 ;
struct TYPE_4__ {int i_sb; } ;


 int BLKTODMAP (int,int ) ;
 int BPERDMAP ;
 int EIO ;
 int L2BPERDMAP ;
 int PSIZE ;
 size_t ROOT ;
 int assert (int) ;
 int dbAllocDmap (struct bmap*,struct dmap*,int,int) ;
 int dbAllocDmapLev (struct bmap*,struct dmap*,int,int,int*) ;
 scalar_t__ dbFreeDmap (struct bmap*,struct dmap*,int,int) ;
 int jfs_error (int ,char*) ;
 int mark_metapage_dirty (struct metapage*) ;
 int min (int,int) ;
 struct metapage* read_metapage (TYPE_2__*,int,int ,int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static int
dbAllocCtl(struct bmap * bmp, s64 nblocks, int l2nb, s64 blkno, s64 * results)
{
 int rc, nb;
 s64 b, lblkno, n;
 struct metapage *mp;
 struct dmap *dp;



 if (l2nb <= L2BPERDMAP) {


  lblkno = BLKTODMAP(blkno, bmp->db_l2nbperpage);
  mp = read_metapage(bmp->db_ipbmap, lblkno, PSIZE, 0);
  if (mp == ((void*)0))
   return -EIO;
  dp = (struct dmap *) mp->data;



  rc = dbAllocDmapLev(bmp, dp, (int) nblocks, l2nb, results);
  if (rc == 0)
   mark_metapage_dirty(mp);

  release_metapage(mp);

  return (rc);
 }




 assert((blkno & (BPERDMAP - 1)) == 0);



 for (n = nblocks, b = blkno; n > 0; n -= nb, b += nb) {


  lblkno = BLKTODMAP(b, bmp->db_l2nbperpage);
  mp = read_metapage(bmp->db_ipbmap, lblkno, PSIZE, 0);
  if (mp == ((void*)0)) {
   rc = -EIO;
   goto backout;
  }
  dp = (struct dmap *) mp->data;



  if (dp->tree.stree[ROOT] != L2BPERDMAP) {
   release_metapage(mp);
   jfs_error(bmp->db_ipbmap->i_sb,
      "dbAllocCtl: the dmap is not all free");
   rc = -EIO;
   goto backout;
  }



  nb = min(n, (s64)BPERDMAP);



  if ((rc = dbAllocDmap(bmp, dp, b, nb))) {
   release_metapage(mp);
   goto backout;
  }



  write_metapage(mp);
 }



 *results = blkno;
 return (0);







      backout:



 for (n = nblocks - n, b = blkno; n > 0;
      n -= BPERDMAP, b += BPERDMAP) {


  lblkno = BLKTODMAP(b, bmp->db_l2nbperpage);
  mp = read_metapage(bmp->db_ipbmap, lblkno, PSIZE, 0);
  if (mp == ((void*)0)) {



   jfs_error(bmp->db_ipbmap->i_sb,
      "dbAllocCtl: I/O Error: Block Leakage.");
   continue;
  }
  dp = (struct dmap *) mp->data;



  if (dbFreeDmap(bmp, dp, b, BPERDMAP)) {



   release_metapage(mp);
   jfs_error(bmp->db_ipbmap->i_sb,
      "dbAllocCtl: Block Leakage.");
   continue;
  }



  write_metapage(mp);
 }

 return (rc);
}
