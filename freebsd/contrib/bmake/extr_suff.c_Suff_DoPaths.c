
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int searchPath; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef int Lst ;


 int Dir_Concat (int ,int ) ;
 int Dir_CopyDir ;
 int Dir_Destroy ;
 char* Dir_MakeFlags (char*,int ) ;
 scalar_t__ FAILURE ;
 int FALSE ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int Lst_Destroy (int ,int ) ;
 int Lst_Duplicate (int ,int ) ;
 int Lst_Init (int ) ;
 int Lst_IsEmpty (int ) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 int SUFF_INCLUDE ;
 int SUFF_LIBRARY ;
 int VAR_GLOBAL ;
 int Var_Set (char*,char*,int ,int ) ;
 int dirSearchPath ;
 int free (char*) ;
 int sufflist ;

void
Suff_DoPaths(void)
{
    Suff *s;
    LstNode ln;
    char *ptr;
    Lst inIncludes;
    Lst inLibs;

    if (Lst_Open(sufflist) == FAILURE) {
 return;
    }

    inIncludes = Lst_Init(FALSE);
    inLibs = Lst_Init(FALSE);

    while ((ln = Lst_Next(sufflist)) != ((void*)0)) {
 s = (Suff *)Lst_Datum(ln);
 if (!Lst_IsEmpty (s->searchPath)) {
     Dir_Concat(s->searchPath, dirSearchPath);
 } else {
     Lst_Destroy(s->searchPath, Dir_Destroy);
     s->searchPath = Lst_Duplicate(dirSearchPath, Dir_CopyDir);
 }
    }

    Var_Set(".INCLUDES", ptr = Dir_MakeFlags("-I", inIncludes), VAR_GLOBAL, 0);
    free(ptr);
    Var_Set(".LIBS", ptr = Dir_MakeFlags("-L", inLibs), VAR_GLOBAL, 0);
    free(ptr);

    Lst_Destroy(inIncludes, Dir_Destroy);
    Lst_Destroy(inLibs, Dir_Destroy);

    Lst_Close(sufflist);
}
