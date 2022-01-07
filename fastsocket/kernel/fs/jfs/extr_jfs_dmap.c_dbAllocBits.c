
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__* stree; } ;
struct dmap {int nfree; int * wmap; TYPE_1__ tree; } ;
struct bmap {int db_agl2size; int db_maxag; int* db_agfree; int db_nfree; TYPE_2__* db_ipbmap; } ;
typedef scalar_t__ s8 ;
typedef int s64 ;
typedef int dmtree_t ;
struct TYPE_4__ {int i_sb; } ;


 int BMAP_LOCK (struct bmap*) ;
 int BMAP_UNLOCK (struct bmap*) ;
 int BPERDMAP ;
 scalar_t__ BUDMIN ;
 int BUDSIZE (int,scalar_t__) ;
 int DBWORD ;
 int L2DBWORD ;
 int LEAFIND ;
 int NLSTOL2BSZ (int) ;
 int NOFREE ;
 int ONES ;
 int assert (int) ;
 int cpu_to_le32 (int) ;
 int dbMaxBud (int *) ;
 int dbSplit (int *,int,int,int ) ;
 int jfs_error (int ,char*) ;
 int le32_add_cpu (int *,int) ;
 int memset (int *,int,int) ;
 int min (int,int) ;

__attribute__((used)) static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
   int nblocks)
{
 int dbitno, word, rembits, nb, nwords, wbitno, nw, agno;
 dmtree_t *tp = (dmtree_t *) & dp->tree;
 int size;
 s8 *leaf;


 leaf = dp->tree.stree + LEAFIND;




 dbitno = blkno & (BPERDMAP - 1);
 word = dbitno >> L2DBWORD;


 assert(dbitno + nblocks <= BPERDMAP);
 for (rembits = nblocks; rembits > 0; rembits -= nb, dbitno += nb) {



  wbitno = dbitno & (DBWORD - 1);
  nb = min(rembits, DBWORD - wbitno);



  if (nb < DBWORD) {



   dp->wmap[word] |= cpu_to_le32(ONES << (DBWORD - nb)
            >> wbitno);






   dbSplit(tp, word, BUDMIN,
    dbMaxBud((u8 *) & dp->wmap[word]));

   word += 1;
  } else {





   nwords = rembits >> L2DBWORD;
   memset(&dp->wmap[word], (int) ONES, nwords * 4);



   nb = nwords << L2DBWORD;




   for (; nwords > 0; nwords -= nw) {
    if (leaf[word] < BUDMIN) {
     jfs_error(bmp->db_ipbmap->i_sb,
        "dbAllocBits: leaf page "
        "corrupt");
     break;
    }






    size = min((int)leaf[word], NLSTOL2BSZ(nwords));







    dbSplit(tp, word, size, NOFREE);


    nw = BUDSIZE(size, BUDMIN);
    word += nw;
   }
  }
 }


 le32_add_cpu(&dp->nfree, -nblocks);

 BMAP_LOCK(bmp);





 agno = blkno >> bmp->db_agl2size;
 if (agno > bmp->db_maxag)
  bmp->db_maxag = agno;


 bmp->db_agfree[agno] -= nblocks;
 bmp->db_nfree -= nblocks;

 BMAP_UNLOCK(bmp);
}
