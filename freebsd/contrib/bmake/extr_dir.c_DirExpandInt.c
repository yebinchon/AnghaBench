
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Path ;
typedef int * LstNode ;
typedef int Lst ;


 int DirMatchFiles (char const*,int *,int ) ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 scalar_t__ SUCCESS ;

__attribute__((used)) static void
DirExpandInt(const char *word, Lst path, Lst expansions)
{
    LstNode ln;
    Path *p;

    if (Lst_Open(path) == SUCCESS) {
 while ((ln = Lst_Next(path)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     DirMatchFiles(word, p, expansions);
 }
 Lst_Close(path);
    }
}
