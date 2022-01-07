
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmaptree {int dummy; } ;
struct dmapctl {int * stree; scalar_t__ budmin; void* height; void* leafidx; void* l2nleafs; void* nleafs; } ;
typedef int s8 ;


 int CTLLEAFIND ;
 scalar_t__ L2BPERDMAP ;
 int L2LPERCTL ;
 int LPERCTL ;
 int NOFREE ;
 void* cpu_to_le32 (int) ;
 int dbInitTree (struct dmaptree*) ;

__attribute__((used)) static int dbInitDmapCtl(struct dmapctl * dcp, int level, int i)
{
 s8 *cp;

 dcp->nleafs = cpu_to_le32(LPERCTL);
 dcp->l2nleafs = cpu_to_le32(L2LPERCTL);
 dcp->leafidx = cpu_to_le32(CTLLEAFIND);
 dcp->height = cpu_to_le32(5);
 dcp->budmin = L2BPERDMAP + L2LPERCTL * level;






 cp = &dcp->stree[CTLLEAFIND + i];
 for (; i < LPERCTL; i++)
  *cp++ = NOFREE;


 return (dbInitTree((struct dmaptree *) dcp));
}
