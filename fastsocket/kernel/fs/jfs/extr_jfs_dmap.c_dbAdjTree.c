
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* dmt_stree; int dmt_height; int dmt_leafidx; } ;
typedef TYPE_1__ dmtree_t ;


 int TREEMAX (int*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void dbAdjTree(dmtree_t * tp, int leafno, int newval)
{
 int lp, pp, k;
 int max;



 lp = leafno + le32_to_cpu(tp->dmt_leafidx);




 if (tp->dmt_stree[lp] == newval)
  return;



 tp->dmt_stree[lp] = newval;



 for (k = 0; k < le32_to_cpu(tp->dmt_height); k++) {



  lp = ((lp - 1) & ~0x03) + 1;



  pp = (lp - 1) >> 2;



  max = TREEMAX(&tp->dmt_stree[lp]);




  if (tp->dmt_stree[pp] == max)
   break;



  tp->dmt_stree[pp] = max;



  lp = pp;
 }
}
