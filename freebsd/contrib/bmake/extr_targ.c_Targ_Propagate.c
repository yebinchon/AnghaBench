
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Lst_ForEach (int ,int ,int *) ;
 int TargPropagateNode ;
 int allTargets ;

void
Targ_Propagate(void)
{
    Lst_ForEach(allTargets, TargPropagateNode, ((void*)0));
}
