
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nameLen; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef int Boolean ;


 int FALSE ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int * Lst_FindFrom (int ,int ,char*,int ) ;
 int Lst_Succ (int *) ;
 int SuffSuffHasNameP ;
 int SuffSuffIsPrefix ;
 int TRUE ;
 TYPE_1__* suffNull ;
 int sufflist ;

__attribute__((used)) static Boolean
SuffParseTransform(char *str, Suff **srcPtr, Suff **targPtr)
{
    LstNode srcLn;
    Suff *src;
    LstNode targLn;
    char *str2;
    LstNode singleLn;

    Suff *single = ((void*)0);


    srcLn = ((void*)0);
    singleLn = ((void*)0);







    for (;;) {
 if (srcLn == ((void*)0)) {
     srcLn = Lst_Find(sufflist, str, SuffSuffIsPrefix);
 } else {
     srcLn = Lst_FindFrom(sufflist, Lst_Succ(srcLn), str,
      SuffSuffIsPrefix);
 }
 if (srcLn == ((void*)0)) {



     if (singleLn != ((void*)0)) {
  *srcPtr = single;
  *targPtr = suffNull;
  return(TRUE);
     }
     return (FALSE);
 }
 src = (Suff *)Lst_Datum(srcLn);
 str2 = str + src->nameLen;
 if (*str2 == '\0') {
     single = src;
     singleLn = srcLn;
 } else {
     targLn = Lst_Find(sufflist, str2, SuffSuffHasNameP);
     if (targLn != ((void*)0)) {
  *srcPtr = src;
  *targPtr = (Suff *)Lst_Datum(targLn);
  return (TRUE);
     }
 }
    }
}
