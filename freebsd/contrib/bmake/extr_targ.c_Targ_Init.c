
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int HTSIZE ;
 int Hash_InitTable (int *,int ) ;
 int Lst_Init (int ) ;
 int allTargets ;
 int targets ;

void
Targ_Init(void)
{
    allTargets = Lst_Init(FALSE);
    Hash_InitTable(&targets, HTSIZE);
}
