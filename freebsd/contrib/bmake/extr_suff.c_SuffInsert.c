
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ sNum; char* name; struct TYPE_12__* ref; int refCount; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef TYPE_1__* Lst ;


 scalar_t__ DEBUG (int ) ;
 scalar_t__ FAILURE ;
 int Lst_AtEnd (TYPE_1__*,TYPE_1__*) ;
 int Lst_Close (TYPE_1__*) ;
 scalar_t__ Lst_Datum (int *) ;
 int Lst_InsertBefore (TYPE_1__*,int *,TYPE_1__*) ;
 int * Lst_Next (TYPE_1__*) ;
 scalar_t__ Lst_Open (TYPE_1__*) ;
 int SUFF ;
 int debug_file ;
 int fprintf (int ,char*,...) ;

__attribute__((used)) static void
SuffInsert(Lst l, Suff *s)
{
    LstNode ln;
    Suff *s2 = ((void*)0);

    if (Lst_Open(l) == FAILURE) {
 return;
    }
    while ((ln = Lst_Next(l)) != ((void*)0)) {
 s2 = (Suff *)Lst_Datum(ln);
 if (s2->sNum >= s->sNum) {
     break;
 }
    }

    Lst_Close(l);
    if (DEBUG(SUFF)) {
 fprintf(debug_file, "inserting %s(%d)...", s->name, s->sNum);
    }
    if (ln == ((void*)0)) {
 if (DEBUG(SUFF)) {
     fprintf(debug_file, "at end of list\n");
 }
 (void)Lst_AtEnd(l, s);
 s->refCount++;
 (void)Lst_AtEnd(s->ref, l);
    } else if (s2->sNum != s->sNum) {
 if (DEBUG(SUFF)) {
     fprintf(debug_file, "before %s(%d)\n", s2->name, s2->sNum);
 }
 (void)Lst_InsertBefore(l, ln, s);
 s->refCount++;
 (void)Lst_AtEnd(s->ref, l);
    } else if (DEBUG(SUFF)) {
 fprintf(debug_file, "already there\n");
    }
}
