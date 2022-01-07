
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 void* Lst_Init (int ) ;
 void* defIncPath ;
 void* includes ;
 int * mainNode ;
 void* parseIncPath ;
 void* sysIncPath ;
 void* targCmds ;

void
Parse_Init(void)
{
    mainNode = ((void*)0);
    parseIncPath = Lst_Init(FALSE);
    sysIncPath = Lst_Init(FALSE);
    defIncPath = Lst_Init(FALSE);
    includes = Lst_Init(FALSE);



}
