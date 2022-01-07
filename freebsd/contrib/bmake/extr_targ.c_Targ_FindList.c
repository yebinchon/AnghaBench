
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LstNode ;
typedef int Lst ;
typedef int GNode ;


 int Error (char*,char*) ;
 scalar_t__ FAILURE ;
 int FALSE ;
 int Lst_AtEnd (int ,int *) ;
 int Lst_Close (int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int Lst_Init (int ) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 int TARG_NOCREATE ;
 int * Targ_FindNode (char*,int) ;

Lst
Targ_FindList(Lst names, int flags)
{
    Lst nodes;
    LstNode ln;
    GNode *gn;
    char *name;

    nodes = Lst_Init(FALSE);

    if (Lst_Open(names) == FAILURE) {
 return (nodes);
    }
    while ((ln = Lst_Next(names)) != ((void*)0)) {
 name = (char *)Lst_Datum(ln);
 gn = Targ_FindNode(name, flags);
 if (gn != ((void*)0)) {





     (void)Lst_AtEnd(nodes, gn);
 } else if (flags == TARG_NOCREATE) {
     Error("\"%s\" -- target unknown.", name);
 }
    }
    Lst_Close(names);
    return (nodes);
}
