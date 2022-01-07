
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dmaptree {void* leafidx; int * stree; int budmin; void* height; void* l2nleafs; void* nleafs; } ;
struct dmap {int * wmap; struct dmaptree tree; } ;
typedef int s8 ;


 int BUDMIN ;
 int L2LPERDMAP ;
 int LEAFIND ;
 int LPERDMAP ;
 void* cpu_to_le32 (int) ;
 int dbInitTree (struct dmaptree*) ;
 int dbMaxBud (int *) ;
 int le32_to_cpu (void*) ;

__attribute__((used)) static int dbInitDmapTree(struct dmap * dp)
{
 struct dmaptree *tp;
 s8 *cp;
 int i;


 tp = &dp->tree;
 tp->nleafs = cpu_to_le32(LPERDMAP);
 tp->l2nleafs = cpu_to_le32(L2LPERDMAP);
 tp->leafidx = cpu_to_le32(LEAFIND);
 tp->height = cpu_to_le32(4);
 tp->budmin = BUDMIN;





 cp = tp->stree + le32_to_cpu(tp->leafidx);
 for (i = 0; i < LPERDMAP; i++)
  *cp++ = dbMaxBud((u8 *) & dp->wmap[i]);


 return (dbInitTree(tp));
}
