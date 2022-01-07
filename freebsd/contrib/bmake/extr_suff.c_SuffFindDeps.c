
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type; char* path; char* name; TYPE_1__* suffix; } ;
struct TYPE_8__ {int searchPath; int refCount; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef int Lst ;
typedef TYPE_2__ GNode ;


 int Arch_FindLib (TYPE_2__*,int ) ;
 scalar_t__ DEBUG (int ) ;
 int LIBSUFF ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,int ,int ) ;
 int OP_ARCHV ;
 int OP_DEPS_FOUND ;
 int OP_LIB ;
 int PREFIX ;
 int SUFF ;
 int SuffFindArchiveDeps (TYPE_2__*,int ) ;
 int SuffFindNormalDeps (TYPE_2__*,int ) ;
 int SuffSuffHasNameP ;
 int TARGET ;
 int Var_Set (int ,char*,TYPE_2__*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,char*) ;
 int sufflist ;

__attribute__((used)) static void
SuffFindDeps(GNode *gn, Lst slst)
{
    if (gn->type & OP_DEPS_FOUND) {



 return;
    } else {
 gn->type |= OP_DEPS_FOUND;
    }



    Var_Set(TARGET, gn->path ? gn->path : gn->name, gn, 0);
    Var_Set(PREFIX, gn->name, gn, 0);

    if (DEBUG(SUFF)) {
 fprintf(debug_file, "SuffFindDeps (%s)\n", gn->name);
    }

    if (gn->type & OP_ARCHV) {
 SuffFindArchiveDeps(gn, slst);
    } else if (gn->type & OP_LIB) {
 LstNode ln;
 Suff *s;

 ln = Lst_Find(sufflist, LIBSUFF, SuffSuffHasNameP);
 if (gn->suffix)
     gn->suffix->refCount--;
 if (ln != ((void*)0)) {
     gn->suffix = s = (Suff *)Lst_Datum(ln);
     gn->suffix->refCount++;
     Arch_FindLib(gn, s->searchPath);
 } else {
     gn->suffix = ((void*)0);
     Var_Set(TARGET, gn->name, gn, 0);
 }





 Var_Set(PREFIX, "", gn, 0);
    } else {
 SuffFindNormalDeps(gn, slst);
    }
}
