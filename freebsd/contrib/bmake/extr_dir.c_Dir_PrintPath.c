
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;


 int DirPrintDir ;
 int Lst_ForEach (int ,int ,int *) ;

void
Dir_PrintPath(Lst path)
{
    Lst_ForEach(path, DirPrintDir, ((void*)0));
}
