
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int name; int cohorts; } ;
typedef int Lst ;


 int FALSE ;
 int LST_CONCNEW ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int Lst_Concat (int ,int ,int ) ;
 int Lst_Init (int ) ;
 int OP_DOUBLEDEP ;
 int Punt (char*) ;
 int VAR_GLOBAL ;
 int Var_Append (char*,int ,int ) ;
 TYPE_1__* mainNode ;

Lst
Parse_MainName(void)
{
    Lst mainList;

    mainList = Lst_Init(FALSE);

    if (mainNode == ((void*)0)) {
 Punt("no target to make.");

    } else if (mainNode->type & OP_DOUBLEDEP) {
 (void)Lst_AtEnd(mainList, mainNode);
 Lst_Concat(mainList, mainNode->cohorts, LST_CONCNEW);
    }
    else
 (void)Lst_AtEnd(mainList, mainNode);
    Var_Append(".TARGETS", mainNode->name, VAR_GLOBAL);
    return (mainList);
}
