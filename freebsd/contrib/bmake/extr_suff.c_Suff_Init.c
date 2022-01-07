
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 void* Lst_Init (int ) ;
 int Suff_ClearSuffixes () ;
 void* srclist ;
 void* suffClean ;
 void* transforms ;

void
Suff_Init(void)
{



    srclist = Lst_Init(FALSE);
    transforms = Lst_Init(FALSE);






    Suff_ClearSuffixes();
}
