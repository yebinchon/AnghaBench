
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int Lst_Destroy (int *,int ) ;
 int Lst_ForEach (int *,int ,int *) ;
 int ParseHasCommands ;
 int Suff_EndTransform ;
 scalar_t__ inLine ;
 int * targets ;

__attribute__((used)) static void
ParseFinishLine(void)
{
    if (inLine) {
 Lst_ForEach(targets, Suff_EndTransform, ((void*)0));
 Lst_Destroy(targets, ParseHasCommands);
 targets = ((void*)0);
 inLine = FALSE;
    }
}
