
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int refCount; int hits; } ;
typedef TYPE_1__ Path ;
typedef int * LstNode ;


 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 scalar_t__ SUCCESS ;
 int bigmisses ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int hits ;
 int misses ;
 int nearmisses ;
 int openDirectories ;

void
Dir_PrintDirectories(void)
{
    LstNode ln;
    Path *p;

    fprintf(debug_file, "#*** Directory Cache:\n");
    fprintf(debug_file, "# Stats: %d hits %d misses %d near misses %d losers (%d%%)\n",
       hits, misses, nearmisses, bigmisses,
       (hits+bigmisses+nearmisses ?
        hits * 100 / (hits + bigmisses + nearmisses) : 0));
    fprintf(debug_file, "# %-20s referenced\thits\n", "directory");
    if (Lst_Open(openDirectories) == SUCCESS) {
 while ((ln = Lst_Next(openDirectories)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     fprintf(debug_file, "# %-20s %10d\t%4d\n", p->name, p->refCount, p->hits);
 }
 Lst_Close(openDirectories);
    }
}
