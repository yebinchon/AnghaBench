
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_4__ {int type; char* name; int flags; int mtime; int parents; } ;
typedef int * LstNode ;
typedef TYPE_1__ GNode ;


 int Arch_MTime (TYPE_1__*) ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 int OP_ARCHV ;
 int REMAKE ;
 scalar_t__ SUCCESS ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;

time_t
Arch_MemMTime(GNode *gn)
{
    LstNode ln;
    GNode *pgn;
    char *nameStart,
    *nameEnd;

    if (Lst_Open(gn->parents) != SUCCESS) {
 gn->mtime = 0;
 return (0);
    }
    while ((ln = Lst_Next(gn->parents)) != ((void*)0)) {
 pgn = (GNode *)Lst_Datum(ln);

 if (pgn->type & OP_ARCHV) {







     nameStart = strchr(pgn->name, '(') + 1;
     nameEnd = strchr(nameStart, ')');

     if ((pgn->flags & REMAKE) &&
  strncmp(nameStart, gn->name, nameEnd - nameStart) == 0) {
         gn->mtime = Arch_MTime(pgn);
     }
 } else if (pgn->flags & REMAKE) {




     gn->mtime = 0;
     break;
 }
    }

    Lst_Close(gn->parents);

    return (gn->mtime);
}
