
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int unmade; } ;
typedef TYPE_1__ GNode ;


 int Dir_MTime (TYPE_1__*,int ) ;
 int Make_TimeStamp (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
MakeFindChild(void *gnp, void *pgnp)
{
    GNode *gn = (GNode *)gnp;
    GNode *pgn = (GNode *)pgnp;

    (void)Dir_MTime(gn, 0);
    Make_TimeStamp(pgn, gn);
    pgn->unmade--;

    return (0);
}
