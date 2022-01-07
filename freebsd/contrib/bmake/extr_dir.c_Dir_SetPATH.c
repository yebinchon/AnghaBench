
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ Path ;
typedef int * LstNode ;
typedef scalar_t__ Boolean ;


 scalar_t__ FALSE ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_First (int ) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 scalar_t__ SUCCESS ;
 scalar_t__ TRUE ;
 int VAR_GLOBAL ;
 int Var_Append (char*,int ,int ) ;
 int Var_Delete (char*,int ) ;
 TYPE_4__* cur ;
 int dirSearchPath ;
 TYPE_1__* dot ;
 TYPE_1__* dotLast ;

void
Dir_SetPATH(void)
{
    LstNode ln;
    Path *p;
    Boolean hasLastDot = FALSE;

    Var_Delete(".PATH", VAR_GLOBAL);

    if (Lst_Open(dirSearchPath) == SUCCESS) {
 if ((ln = Lst_First(dirSearchPath)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     if (p == dotLast) {
  hasLastDot = TRUE;
  Var_Append(".PATH", dotLast->name, VAR_GLOBAL);
     }
 }

 if (!hasLastDot) {
     if (dot)
  Var_Append(".PATH", dot->name, VAR_GLOBAL);
     if (cur)
  Var_Append(".PATH", cur->name, VAR_GLOBAL);
 }

 while ((ln = Lst_Next(dirSearchPath)) != ((void*)0)) {
     p = (Path *)Lst_Datum(ln);
     if (p == dotLast)
  continue;
     if (p == dot && hasLastDot)
  continue;
     Var_Append(".PATH", p->name, VAR_GLOBAL);
 }

 if (hasLastDot) {
     if (dot)
  Var_Append(".PATH", dot->name, VAR_GLOBAL);
     if (cur)
  Var_Append(".PATH", cur->name, VAR_GLOBAL);
 }
 Lst_Close(dirSearchPath);
    }
}
