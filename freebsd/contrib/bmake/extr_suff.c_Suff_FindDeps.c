
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GNode ;


 int SuffFindDeps (int *,int ) ;
 scalar_t__ SuffRemoveSrc (int ) ;
 int srclist ;

void
Suff_FindDeps(GNode *gn)
{

    SuffFindDeps(gn, srclist);
    while (SuffRemoveSrc(srclist))
 continue;
}
