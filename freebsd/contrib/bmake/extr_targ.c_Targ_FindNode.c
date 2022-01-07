
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
typedef int Hash_Entry ;
typedef TYPE_1__ GNode ;
typedef int Boolean ;


 int FROM_DEPEND ;
 int * Hash_CreateEntry (int *,char const*,int *) ;
 int * Hash_FindEntry (int *,char const*) ;
 scalar_t__ Hash_GetValue (int *) ;
 int Hash_SetValue (int *,TYPE_1__*) ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int TARG_CREATE ;
 int TARG_NOHASH ;
 TYPE_1__* Targ_NewGN (char const*) ;
 int VAR_GLOBAL ;
 int Var_Append (char*,char const*,int ) ;
 int allTargets ;
 scalar_t__ doing_depend ;
 int targets ;

GNode *
Targ_FindNode(const char *name, int flags)
{
    GNode *gn;
    Hash_Entry *he = ((void*)0);
    Boolean isNew;


    if (!(flags & (TARG_CREATE | TARG_NOHASH))) {
 he = Hash_FindEntry(&targets, name);
 if (he == ((void*)0))
     return ((void*)0);
 return (GNode *)Hash_GetValue(he);
    }

    if (!(flags & TARG_NOHASH)) {
 he = Hash_CreateEntry(&targets, name, &isNew);
 if (!isNew)
     return (GNode *)Hash_GetValue(he);
    }

    gn = Targ_NewGN(name);
    if (!(flags & TARG_NOHASH))
 Hash_SetValue(he, gn);
    Var_Append(".ALLTARGETS", name, VAR_GLOBAL);
    (void)Lst_AtEnd(allTargets, gn);
    if (doing_depend)
 gn->flags |= FROM_DEPEND;
    return gn;
}
