
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_sb; } ;
struct bmap {int db_numag; int db_agpref; int* db_agfree; int * db_active; scalar_t__ db_nfree; } ;
typedef int s64 ;
struct TYPE_2__ {struct bmap* bmap; } ;


 int BMAP_LOCK (struct bmap*) ;
 int BMAP_UNLOCK (struct bmap*) ;
 TYPE_1__* JFS_SBI (int ) ;
 scalar_t__ atomic_read (int *) ;

int dbNextAG(struct inode *ipbmap)
{
 s64 avgfree;
 int agpref;
 s64 hwm = 0;
 int i;
 int next_best = -1;
 struct bmap *bmp = JFS_SBI(ipbmap->i_sb)->bmap;

 BMAP_LOCK(bmp);


 avgfree = (u32)bmp->db_nfree / bmp->db_numag;





 agpref = bmp->db_agpref;
 if ((atomic_read(&bmp->db_active[agpref]) == 0) &&
     (bmp->db_agfree[agpref] >= avgfree))
  goto unlock;




 for (i = 0 ; i < bmp->db_numag; i++, agpref++) {
  if (agpref == bmp->db_numag)
   agpref = 0;

  if (atomic_read(&bmp->db_active[agpref]))

   continue;
  if (bmp->db_agfree[agpref] >= avgfree) {

   bmp->db_agpref = agpref;
   goto unlock;
  } else if (bmp->db_agfree[agpref] > hwm) {

   hwm = bmp->db_agfree[agpref];
   next_best = agpref;
  }
 }





 if (next_best != -1)
  bmp->db_agpref = next_best;

unlock:
 BMAP_UNLOCK(bmp);



 return (bmp->db_agpref);
}
