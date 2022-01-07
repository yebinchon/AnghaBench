
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s8 ;
struct TYPE_4__ {int* dmt_stree; int dmt_budmin; int dmt_leafidx; } ;
typedef TYPE_1__ dmtree_t ;


 int BUDSIZE (int,int) ;
 int dbAdjTree (TYPE_1__*,int,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void dbSplit(dmtree_t * tp, int leafno, int splitsz, int newval)
{
 int budsz;
 int cursz;
 s8 *leaf = tp->dmt_stree + le32_to_cpu(tp->dmt_leafidx);



 if (leaf[leafno] > tp->dmt_budmin) {





  cursz = leaf[leafno] - 1;
  budsz = BUDSIZE(cursz, tp->dmt_budmin);



  while (cursz >= splitsz) {


   dbAdjTree(tp, leafno ^ budsz, cursz);



   cursz -= 1;
   budsz >>= 1;
  }
 }




 dbAdjTree(tp, leafno, newval);
}
