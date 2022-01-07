
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int unmade; int children; } ;
typedef int * LstNode ;
typedef TYPE_1__ GNode ;


 int * Lst_Member (int ,TYPE_1__*) ;
 int Lst_Remove (int ,int *) ;
 int Make_HandleUse (TYPE_1__*,TYPE_1__*) ;
 int OP_MARK ;
 int OP_USE ;
 int OP_USEBEFORE ;

__attribute__((used)) static int
MakeHandleUse(void *cgnp, void *pgnp)
{
    GNode *cgn = (GNode *)cgnp;
    GNode *pgn = (GNode *)pgnp;
    LstNode ln;
    int unmarked;

    unmarked = ((cgn->type & OP_MARK) == 0);
    cgn->type |= OP_MARK;

    if ((cgn->type & (OP_USE|OP_USEBEFORE)) == 0)
 return (0);

    if (unmarked)
 Make_HandleUse(cgn, pgn);
    if ((ln = Lst_Member(pgn->children, cgn)) != ((void*)0)) {
 Lst_Remove(pgn->children, ln);
 pgn->unmade--;
    }
    return (0);
}
