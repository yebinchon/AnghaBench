
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {int nbperpage; int l2nbperpage; struct bmap* bmap; } ;
struct inode {int i_sb; } ;
struct dmapctl {void** stree; } ;
struct dmap {int start; } ;
struct bmap {int db_mapsize; int db_agl2size; int db_agsize; int db_numag; int* db_agfree; int db_maxag; int db_nfree; void* db_maxfreebud; int db_maxlevel; } ;
typedef void* s8 ;
typedef int s64 ;


 int BLKTODMAP (int,int ) ;
 int BLKTOL0 (int,int ) ;
 int BLKTOL1 (int,int ) ;
 int BMAPBLKNO ;
 int BMAPSZTOLEV (int) ;
 int BPERDMAP ;
 int CTLLEAFIND ;
 int EIO ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int L2BPERDMAP ;
 int L2MAXL0SIZE ;
 int L2MAXL1SIZE ;
 int LPERCTL ;
 int MAXAG ;
 int MAXL0SIZE ;
 int MAXL1SIZE ;
 int PSIZE ;
 int dbGetL2AGSize (int) ;
 void* dbInitDmap (struct dmap*,int,int) ;
 void* dbInitDmapCtl (struct dmapctl*,int,int) ;
 struct metapage* get_metapage (struct inode*,int,int ,int ) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,long long,long long,long long) ;
 int le64_to_cpu (int ) ;
 int min (int,int) ;
 struct metapage* read_metapage (struct inode*,int,int ,int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

int dbExtendFS(struct inode *ipbmap, s64 blkno, s64 nblocks)
{
 struct jfs_sb_info *sbi = JFS_SBI(ipbmap->i_sb);
 int nbperpage = sbi->nbperpage;
 int i, i0 = 1, j, j0 = 1, k, n;
 s64 newsize;
 s64 p;
 struct metapage *mp, *l2mp, *l1mp = ((void*)0), *l0mp = ((void*)0);
 struct dmapctl *l2dcp, *l1dcp, *l0dcp;
 struct dmap *dp;
 s8 *l0leaf, *l1leaf, *l2leaf;
 struct bmap *bmp = sbi->bmap;
 int agno, l2agsize, oldl2agsize;
 s64 ag_rem;

 newsize = blkno + nblocks;

 jfs_info("dbExtendFS: blkno:%Ld nblocks:%Ld newsize:%Ld",
   (long long) blkno, (long long) nblocks, (long long) newsize);
 bmp->db_mapsize = newsize;
 bmp->db_maxlevel = BMAPSZTOLEV(bmp->db_mapsize);


 l2agsize = dbGetL2AGSize(newsize);
 oldl2agsize = bmp->db_agl2size;

 bmp->db_agl2size = l2agsize;
 bmp->db_agsize = 1 << l2agsize;


 agno = bmp->db_numag;
 bmp->db_numag = newsize >> l2agsize;
 bmp->db_numag += ((u32) newsize % (u32) bmp->db_agsize) ? 1 : 0;
 if (l2agsize == oldl2agsize)
  goto extend;
 k = 1 << (l2agsize - oldl2agsize);
 ag_rem = bmp->db_agfree[0];
 for (i = 0, n = 0; i < agno; n++) {
  bmp->db_agfree[n] = 0;


  for (j = 0; j < k && i < agno; j++, i++) {

   bmp->db_agfree[n] += bmp->db_agfree[i];
  }
 }
 bmp->db_agfree[0] += ag_rem;

 for (; n < MAXAG; n++)
  bmp->db_agfree[n] = 0;





 bmp->db_maxag = bmp->db_maxag / k;







      extend:

 p = BMAPBLKNO + nbperpage;
 l2mp = read_metapage(ipbmap, p, PSIZE, 0);
 if (!l2mp) {
  jfs_error(ipbmap->i_sb, "dbExtendFS: L2 page could not be read");
  return -EIO;
 }
 l2dcp = (struct dmapctl *) l2mp->data;


 k = blkno >> L2MAXL1SIZE;
 l2leaf = l2dcp->stree + CTLLEAFIND + k;
 p = BLKTOL1(blkno, sbi->l2nbperpage);




 for (; k < LPERCTL; k++, p += nbperpage) {

  if (j0) {

   l1mp = read_metapage(ipbmap, p, PSIZE, 0);
   if (l1mp == ((void*)0))
    goto errout;
   l1dcp = (struct dmapctl *) l1mp->data;


   j = (blkno & (MAXL1SIZE - 1)) >> L2MAXL0SIZE;
   l1leaf = l1dcp->stree + CTLLEAFIND + j;
   p = BLKTOL0(blkno, sbi->l2nbperpage);
   j0 = 0;
  } else {

   l1mp = get_metapage(ipbmap, p, PSIZE, 0);
   if (l1mp == ((void*)0))
    goto errout;

   l1dcp = (struct dmapctl *) l1mp->data;


   j = 0;
   l1leaf = l1dcp->stree + CTLLEAFIND;
   p += nbperpage;
  }




  for (; j < LPERCTL; j++) {

   if (i0) {


    l0mp = read_metapage(ipbmap, p, PSIZE, 0);
    if (l0mp == ((void*)0))
     goto errout;
    l0dcp = (struct dmapctl *) l0mp->data;


    i = (blkno & (MAXL0SIZE - 1)) >>
        L2BPERDMAP;
    l0leaf = l0dcp->stree + CTLLEAFIND + i;
    p = BLKTODMAP(blkno,
           sbi->l2nbperpage);
    i0 = 0;
   } else {

    l0mp = get_metapage(ipbmap, p, PSIZE, 0);
    if (l0mp == ((void*)0))
     goto errout;

    l0dcp = (struct dmapctl *) l0mp->data;


    i = 0;
    l0leaf = l0dcp->stree + CTLLEAFIND;
    p += nbperpage;
   }




   for (; i < LPERCTL; i++) {




    if ((n = blkno & (BPERDMAP - 1))) {

     mp = read_metapage(ipbmap, p,
          PSIZE, 0);
     if (mp == ((void*)0))
      goto errout;
     n = min(nblocks, (s64)BPERDMAP - n);
    } else {

     mp = read_metapage(ipbmap, p,
          PSIZE, 0);
     if (mp == ((void*)0))
      goto errout;

     n = min(nblocks, (s64)BPERDMAP);
    }

    dp = (struct dmap *) mp->data;
    *l0leaf = dbInitDmap(dp, blkno, n);

    bmp->db_nfree += n;
    agno = le64_to_cpu(dp->start) >> l2agsize;
    bmp->db_agfree[agno] += n;

    write_metapage(mp);

    l0leaf++;
    p += nbperpage;

    blkno += n;
    nblocks -= n;
    if (nblocks == 0)
     break;
   }





   *l1leaf = dbInitDmapCtl(l0dcp, 0, ++i);
   write_metapage(l0mp);
   l0mp = ((void*)0);

   if (nblocks)
    l1leaf++;
   else {

    if (j > 0)
     break;
    else {

     bmp->db_maxfreebud = *l1leaf;
     release_metapage(l1mp);
     release_metapage(l2mp);
     goto finalize;
    }
   }
  }





  *l2leaf = dbInitDmapCtl(l1dcp, 1, ++j);
  write_metapage(l1mp);
  l1mp = ((void*)0);

  if (nblocks)
   l2leaf++;
  else {

   if (k > 0)
    break;
   else {

    bmp->db_maxfreebud = *l2leaf;
    release_metapage(l2mp);
    goto finalize;
   }
  }
 }

 jfs_error(ipbmap->i_sb,
    "dbExtendFS: function has not returned as expected");
errout:
 if (l0mp)
  release_metapage(l0mp);
 if (l1mp)
  release_metapage(l1mp);
 release_metapage(l2mp);
 return -EIO;




finalize:

 return 0;
}
