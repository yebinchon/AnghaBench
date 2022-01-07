
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s8 ;
struct TYPE_4__ {int* dmt_stree; int dmt_nleafs; int dmt_budmin; int dmt_l2nleafs; int dmt_leafidx; } ;
typedef TYPE_1__ dmtree_t ;


 int BUDSIZE (int,int ) ;
 int EIO ;
 int LITOL2BSZ (int,int,int ) ;
 int NOFREE ;
 int assert (int) ;
 int dbSplit (TYPE_1__*,int,int,int) ;
 int jfs_err (char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int dbBackSplit(dmtree_t * tp, int leafno)
{
 int budsz, bud, w, bsz, size;
 int cursz;
 s8 *leaf = tp->dmt_stree + le32_to_cpu(tp->dmt_leafidx);




 assert(leaf[leafno] == NOFREE);
 size =
     LITOL2BSZ(leafno, le32_to_cpu(tp->dmt_l2nleafs),
        tp->dmt_budmin);





 budsz = BUDSIZE(size, tp->dmt_budmin);



 while (leaf[leafno] == NOFREE) {


  for (w = leafno, bsz = budsz;; bsz <<= 1,
       w = (w < bud) ? w : bud) {
   if (bsz >= le32_to_cpu(tp->dmt_nleafs)) {
    jfs_err("JFS: block map error in dbBackSplit");
    return -EIO;
   }



   bud = w ^ bsz;



   if (leaf[bud] != NOFREE) {



    cursz = leaf[bud] - 1;
    dbSplit(tp, bud, cursz, cursz);
    break;
   }
  }
 }

 if (leaf[leafno] != size) {
  jfs_err("JFS: wrong leaf value in dbBackSplit");
  return -EIO;
 }
 return 0;
}
