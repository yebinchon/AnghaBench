
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ children; scalar_t__ cp; TYPE_1__* parent; struct TYPE_6__* pref; struct TYPE_6__* file; } ;
struct TYPE_5__ {int children; scalar_t__ cp; } ;
typedef TYPE_2__ Src ;
typedef int * LstNode ;
typedef scalar_t__ Lst ;


 scalar_t__ FAILURE ;
 int Lst_Close (scalar_t__) ;
 scalar_t__ Lst_Datum (int *) ;
 int Lst_Destroy (scalar_t__,int *) ;
 int Lst_ForEach (scalar_t__,int ,int *) ;
 int * Lst_Member (scalar_t__,TYPE_2__*) ;
 int * Lst_Next (scalar_t__) ;
 scalar_t__ Lst_Open (scalar_t__) ;
 int Lst_Remove (scalar_t__,int *) ;
 int PrintAddr ;
 int TRUE ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_2__*) ;

__attribute__((used)) static int
SuffRemoveSrc(Lst l)
{
    LstNode ln;
    Src *s;
    int t = 0;

    if (Lst_Open(l) == FAILURE) {
 return 0;
    }







    while ((ln = Lst_Next(l)) != ((void*)0)) {
 s = (Src *)Lst_Datum(ln);
 if (s->children == 0) {
     free(s->file);
     if (!s->parent)
  free(s->pref);
     else {





  --s->parent->children;
     }




     Lst_Remove(l, ln);
     free(s);
     t |= 1;
     Lst_Close(l);
     return TRUE;
 }







    }

    Lst_Close(l);

    return t;
}
